# LOAD LIBRARIES
from bs4 import BeautifulSoup
import fileinput
import os
import string
import subprocess
import sys


# LOAD MARKDOWN FILE & GITHUB LOGIN
os.chdir('/home/jtk/Site')
fname = '/home/jtk/Site/REFS/'+sys.argv[3]
fhand = open(fname, 'r')


# SAVE HEADERS, EXCLUDING COMMENTS IN CODE CHUNKS
headers = list()
code_flag = False
for row in fhand:
    if row.startswith("```") and code_flag == False:
        code_flag = True
    elif row.startswith("```") and code_flag == True:
        code_flag = False
    elif row.startswith('#') and code_flag == False:
        headers.append(row)


# CONSTRUCT TOC FROM HEADERS
TOC = list()
for h in headers:
    hsplit = h.split(' ')
    hlevel = len(hsplit[0])
    if hlevel > 1:
        space = "\t"*(hlevel-1)
    else:
        space = ""
    aname = "-".join(hsplit[1:]).lower()[:-1]
    lname = " ".join(hsplit[1:])[:-1]
    TOC.append(space+'- ['+lname+'](#'+aname+')\n')


# WRITE HEADER & CONTENTS TO MARKDOWN FILE
foname = fname[:-3]+"_TOC.md"
foname = foname.split('/') 
foname.insert(-1, "TOCS")
foname = '/'.join(foname)
fout = open(foname, "w")

## Add URLs & word count
url = 'https://jtkovacs.github.io/REFS/HTML/'+foname[25:-7]+'.html'
wc = subprocess.run(['wc', '-w', fname], stdout=subprocess.PIPE)
num_words = wc.stdout.decode("utf-8").split(" ")[0]
fout.write('<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="'+url+'">'+url+'</a> \> '+num_words+' words </p>') 

## TOC
fout.write('<table class="TOC"><tr><td>')
for row in TOC:
    fout.write(row)
fout.write("</td></tr></table>")
fout.write("\n")

## Content
fhand = open(fname, 'r')
for row in fhand:
    fout.write(row)    
fout.close()


# CREATE HTML FILE USING PANDOC
hname = foname[:-7]+'.html'
hname = hname.split('/')
hname.remove('TOCS')
hname.insert(-1, "HTML")
html_out = "/".join(hname)
subprocess.run(['pandoc', foname, '-f', 'markdown', '-t', 'html', '-s', '-o', html_out])


# ADD ANCHORS AND STYLESHEET
fhand = open(html_out, 'r')
my_soup = BeautifulSoup(fhand, "html.parser")
headers = my_soup.find_all(["h1","h2","h3","h4","h5","h6"])
for h in headers:
    h.string.wrap(my_soup.new_tag("a"))
    del h['id'] 
    h.a['name'] = "-".join(h.get_text().lower().split(" "))
link = my_soup.new_tag("link")
link["rel"] = "stylesheet"
link["type"] = "text/css"
link['href'] = "refs.css"
my_soup.head.style.replace_with(link)


# WRITE FINAL HTML FILE
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())
# not sure why I need this twice????
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())


# PUSH TO GITHUB 
# Note: you must already be logged in to GitHub for this to work
commit_msg = html_out.split("/")[-1]
subprocess.run(['git', 'add', '.'])
subprocess.run(['git', 'commit', '-m', 'Changes to {}'.format(commit_msg)])
# http://stackoverflow.com/a/24547289
uname = sys.argv[1]
pw = sys.argv[2]
subprocess.run(['git', 'push', '-q', '--repo', 'https://'+uname+':'+pw+'@github.com/'+uname+'/jtkovacs.github.io.git'])
subprocess.run(['git', 'fetch', '-q'])
