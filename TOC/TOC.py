


# Load libraries
from bs4 import BeautifulSoup
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
code_flag = False
for row in fhand:
    
    # Exclude comments inside code chunks
    if row.startswith("```") and code_flag == False:
        code_flag = True
    elif row.startswith("```") and code_flag == True:
        code_flag = False
    
    # Extract headers
    elif row.startswith('#') and code_flag == False:
        headers.append(row)



# Process header data to build TOC
TOC = list()
for h in headers:
    
    # Calculate indentation depth
    hsplit = h.split(' ')
    hlevel = len(hsplit[0])
#    if hlevel > 1:
#        space = "\t"*(hlevel-1)
#    else:
#        space = ""
        
    # Assign number prefix
    h1,h2,h3,h4,h5 = (0,0,0,0,0)
    for i in range(len(h)):
        print(i)
        
        
    # Construct TOC entry
    aname = "-".join(hsplit[1:]).lower()[:-1]
    lname = " ".join(hsplit[1:])[:-1]
    TOC.append(space+'- ['+lname+'](#'+aname+')\n')



# Open new .md file
## Constructing the filename is tricky
foname = fname[:-3]+"_TOC.md"
foname = foname.split('/') 
foname.insert(-1, "TOCS")
foname = '/'.join(foname)
fout = open(foname, "w")



# Write to new .md file
## ... URLs and word count
url = 'https://jtkovacs.github.io/REFS/HTML/'+foname[25:-7]+'.html'
wc = subprocess.run(['wc', '-w', fname], stdout=subprocess.PIPE)
num_words = wc.stdout.decode("utf-8").split(" ")[0]
fout.write('<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="'+url+'">'+url+'</a> \> '+num_words+' words </p>') 

## ... TOC
fout.write('<table class="TOC"><tr><td>')
for row in TOC:
    fout.write(row)
fout.write("</td></tr></table>")
fout.write("\n")

## . content
fhand = open(fname, 'r')
for row in fhand:
    fout.write(row)
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
headers = my_soup.find_all(["h1","h2","h3","h4","h5","h6"])
for h in headers:
    h.string.wrap(my_soup.new_tag("a"))
    del h['id'] 

    # Extract URL text, reformat and set as anchor name
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


