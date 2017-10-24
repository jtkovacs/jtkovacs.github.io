


# Load libraries
from bs4 import BeautifulSoup
import datetime
import fileinput
import string
import subprocess
import sys



# Open .md file based on filename argument
## $ toc information-architecture.md
## alias should handle cd to main site folder
## Linux: '/home/jtk/Site/'
## PythonAnywhere: '~/jtkovacs.github.io/'
wd = 'refs/'
fname = wd + 'notes/' + sys.argv[1]
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
    ### - 1.1.2. [What are blue & green?](#what-are-blue-green)
    TOC.append(space+'- &nbsp;'+nr+'. ['+lname+'](#'+aname+')\n')



# Open new .md file
## Constructing the output filename: /home/jtk/Site/refs/tocs/fname_TOC.md
foname = wd + 'tocs/' + sys.argv[1][:-3] + '_TOC.md'
fout = open(foname, "w")



# Write to new .md file
## ... home, last update, word count, est. reading time
wc = subprocess.run(['wc', '-w', fname], stdout=subprocess.PIPE)
title = sys.argv[1][:-3].replace('-', ' ')
num_words = wc.stdout.decode("utf-8").split(" ")[0]
up_date = datetime.datetime.now().strftime("%m/%d/%Y")
fout.write('<p class="path"><a href="../pkb.html">pkb contents</a> \> '+title+' | just under '+num_words+' words | updated '+up_date+'</p>')

## ... TOC
fout.write('<div class="TOC">')
for row in TOC:
    fout.write(row)
fout.write("</div>")
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
hname = wd + sys.argv[1][:-3] + '.html'
subprocess.run(['pandoc', foname, '-f', 'markdown', '-t', 'html', '-s', '-o', hname])



# Open .html file
fhand = open(hname, 'r')
my_soup = BeautifulSoup(fhand, "html.parser")



# Make headers into anchors
headers = my_soup.find_all(["h1","h2","h3","h4","h5","h6"])
for h in headers:
    h.string.wrap(my_soup.new_tag("a"))
del h['id']

# Extract URL text, reformat and set as anchor name
## Creates URL-safe anchor by stripping &, ?, and other characters automatically
h.a['name'] = "-".join(h.get_text().lower().split(" "))



# Add filepath to images
## Remove all "ILLOS" from img tags for backwards compatibility
images = my_soup.find_all(["img"])
for i in images:
    img_loc = i['src']
    img_name = img_loc.split("/")[-1]
    i['src'] = "illos/"+img_name



# Add stylesheets
main = my_soup.new_tag("link")
main["rel"] = "stylesheet"
main["type"] = "text/css"
main['href'] = "../assets/styles/main.css"
my_soup.head.style.replace_with(main)
refs = my_soup.new_tag("link")
refs["rel"] = "stylesheet"
refs["type"] = "text/css"
refs['href'] = "../assets/styles/refs.css"
my_soup.head.append(refs)



# Add page title
pg_title_text = 'jtck.github.io | ' + title
my_soup.title.append(pg_title_text)



# Write final .html file
fhand = open(hname, 'w')
fhand.write(my_soup.prettify())
## not sure why I need this twice????
fhand = open(hname, 'w')
fhand.write(my_soup.prettify())

