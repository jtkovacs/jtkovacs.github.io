


# Load libraries
from bs4 import BeautifulSoup
import datetime
import fileinput
import string
import subprocess
import sys



# Open .md file based on filename argument
## $ alias TOC information-architecture.md
fname = '/home/jtk/Site/REFS/'+sys.argv[1]
fhand = open(fname, 'r')



# Process .md file to extract header data
headers = list()
header_indices = list()
hi = 0
code_flag = False
for row in fhand:
        
    ## Exclude comments inside code chunks
    if row.startswith("```") and code_flag == False:
        code_flag = True
    elif row.startswith("```") and code_flag == True:
        code_flag = False
    
    ## Extract and store headers and header indexes
    elif row.startswith('#') and code_flag == False:
        headers.append(row)
        header_indices.append(hi)

    # Increment header index counter
    hi += 1



# Construct TOC from headers 
## - X. [header-name](#header-name)
##      - X.X. [header-name](#header-name)
##      - X.X. [header-name](#header-name)
##          - X.X.X. [header-name](#header-name)
##      - X.X. [header-name](#header-name)

## Initialize counters and containers
hlevels = [len(h.split(' ')[0]) for h in headers]
hcount = {1:0, 2:0, 3:0, 4:0, 5:0}
TOC = list()
nrs = list()

## Process header data
for i,h in enumerate(headers):
    
    # Get header levels
    Hn_prior = hlevels[i-1] 
    Hn = hlevels[i]
    
    ### Calculate header's indentation depth
    if Hn > 1:
        space = "\t"*(Hn-1)
    else:
        space = ""
    
    ### Calculate header's number prefix
    if i == 0:
        hcount[1] += 1
    else:
        hcount[Hn] += 1
        if Hn < Hn_prior:
            j = Hn
            while j+1 <= 5:
                hcount[j+1] = 0
                j += 1
            
    ### Trim zeros from number prefix, e.g. 1.2.0.0 to 1.2.
    nonzero_keys = list()
    for k,v in hcount.items():
        if v != 0:
            nonzero_keys.append(k)
    nonzero_keys.sort()    
    nr_elements = list()
    for n in nonzero_keys:
        nr_elements.append(str(hcount[n]))
    nr = ".".join(nr_elements)
    nrs.append(nr)

    ### Drop Markdown header indicators (#s) from header
    lname = " ".join(h.split(' ')[1:])[:-1]
    
    ### Create URL-safe anchor from header (as pandoc, below)
    aname = "-".join(h.split(' ')[1:]).lower()[:-1]
    aname = aname.replace('&', '')
    aname = aname.replace(',', '')
    aname = aname.replace('(', '')
    aname = aname.replace(')', '')
    aname = aname.replace("'", '')
    aname = aname.replace("/", '')
    aname = aname.replace('?', '')
    aname = aname.replace('--', '-')
#    aname = nr+'.-'+aname

    ### Construct TOC entry for header
    ### - 1.1.2. [What are blue & green?](#1.1.2.-what-are-blue-green)
    TOC.append(space+'- '+nr+'. ['+lname+'](#'+aname+')\n')
    
    

# Open new .md file
## Constructing the output filename is tricky: /home/jtk/Site/REFS/TOCS/fname_TOC.md
foname = fname[:-3]+"_TOC.md"
foname = foname.split('/') 
foname.insert(-1, "TOCS")
foname = '/'.join(foname)
fout = open(foname, "w")



# Write to new .md file
## ... home, last update, word count, est. reading time
wc = subprocess.run(['wc', '-w', fname], stdout=subprocess.PIPE)
title = 'TITLE'
num_words = wc.stdout.decode("utf-8").split(" ")[0]
up_date = datetime.datetime.now().strftime("%m/%d/%Y")
fout.write('<p class="path"><a href="../../pkb.html">PKB CONTENTS</a> \> '+title+' | '+num_words+' words, updated '+up_date+'</p>') 

## ... TOC
fout.write('<table class="TOC"><tr><td>')
for row in TOC:
    fout.write(row)
fout.write("</td></tr></table>")
fout.write("\n")

## ... content
fhand = open(fname, 'r')
ci = 0
ni = 0

for row in fhand:
    
    ### Reformat '## Search engines' as '## 1.4. Search engines'
    if ci in header_indices:
        row = row.split(' ')
        header = row[0]+' '+nrs[ni]+'. '+" ".join(row[1:])
        fout.write(header)
        
        ni += 1

    else:
        fout.write(row)

    ci += 1

fout.close()



# Convert new .md file to .html
hname = foname[:-7]+'.html'
hname = hname.split('/')
hname.remove('TOCS')
hname.insert(-1, "HTML")
html_out = "/".join(hname)
subprocess.run(['pandoc', foname, '-f', 'markdown', '-t', 'html', '-s', '-o', html_out])



# Open .html file
fhand = open(html_out, 'r')
my_soup = BeautifulSoup(fhand, "html.parser")



# Make headers into anchors
## Creates URL-safe anchor by stripping &, ? characters
headers = my_soup.find_all(["h1","h2","h3","h4","h5","h6"])
for h in headers:
    h.string.wrap(my_soup.new_tag("a"))
del h['id'] 



# Extract URL text, reformat and set as anchor name
## Because of URL endcoding, removes ? and & automatically
h.a['name'] = "-".join(h.get_text().lower().split(" "))
    
    
    
# Add stylesheet
link = my_soup.new_tag("link")
link["rel"] = "stylesheet"
link["type"] = "text/css"
link['href'] = "refs.css"
my_soup.head.style.replace_with(link)



# Write final .html file
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())
## not sure why I need this twice????
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())



# If called as $ TOC filename.md "commit message"
# .. call $ python3 PUSH.py "commit message"
try:
    subprocess.run(['python3','/home/jtk/Site/TOC/PUSH.py', sys.argv[2]])
except:
    pass
    
    
    
    