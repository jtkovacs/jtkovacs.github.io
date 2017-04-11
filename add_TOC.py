# IMPORT LIBRARIES
from bs4 import BeautifulSoup
import fileinput
import string
import subprocess


# GET FILENAME
fname = input("Filename: ")
fhand = open(fname, 'r')


# EXTRACT HEADERS & COMMENTS
headers_comments = list()
for row in fhand:
    if row.startswith("```") or row.startswith('#'):
        headers_comments.append(row)


# GET INDICES OF CODE SECTIONS, DENOTED WITH ```
comments_indices = list()
for i in range(len(headers_comments)):
    if headers_comments[i].startswith("```"):
        comments_indices.append(i)
comment_ranges = list()
end = len(comments_indices)
for i in range(0,end,2):
    comment_ranges.append([comments_indices[i],comments_indices[i+1]])
ignore_me = list()
for i in comment_ranges:
    ignore_me.extend(list(range(i[0], i[1]+1, 1)))


# EXTRACT HEADERS ONLY, IGNORING COMMENTS                     
headers = list()
for line in enumerate(headers_comments):
    if line[0] not in ignore_me:
        headers.append(line[1])


# CONSTRUCT TOC FROM HEADERS
TOC = list()
for h in headers:
    hsplit = h.split(' ')
    hlevel = len(hsplit[0])
    if hlevel > 1:
        space = "\t"*(hlevel-1)
    else:
        space = ""
    aname = "-".join(hsplit[1:])
    aname = aname.lower()[:-1]
    lname = " ".join(hsplit[1:])
    lname = lname[:-1]
    TOC.append(space+'- <a href="#'+aname+'">'+lname+'</a>\n')


# WRITE TOC & FILE CONTENTS TO NEW MARKDOWN FILE
foname = fname[:-3]+"1.md"
fout = open(foname, "w")
fout.write('<table id="TOC"><tr><td>')
for row in TOC:
    fout.write(row)
fout.write("</td></tr></table>")
fout.write("\n")
fhand = open(fname, 'r')
for row in fhand:
    fout.write(row)
fout.close()


# CONVERT NEW MARKDOWN FILE TO HTML FILE
html_out = foname[:-3]+'.html'
subprocess.run(['pandoc',foname, '-f', 'markdown', '-t', 'html', '-s', '-o', html_out])


# MAKE HEADERS IN HTML FILE INTO ANCHORS
fhand = open(html_out, 'r')
my_soup = BeautifulSoup(fhand, "html.parser")
headers = my_soup.find_all(["h1","h2","h3","h4","h5","h6"])
for h in headers:
    h.string.wrap(my_soup.new_tag("a"))
    del h['id'] 
    h.a['name'] = "-".join(h.get_text().lower().split(" "))


# ADD STYLESHEET LINK TO HTML FILE
link = my_soup.new_tag("link")
link["rel"] = "stylesheet"
link["type"] = "text/css"
link['href'] = "refs.css"
my_soup.head.style.replace_with(link)


# WRITE FINAL HTML FILE
# not sure why this needs to be done 2x to work ... 
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())
fhand = open(html_out, 'w')
fhand.write(my_soup.prettify())
