

- create one script apiece
    - **TOC.py** : add header (URLs, word count, numbered TOC), convert to HTML, add anchors and numbers to make links navigable
    - **PUSH.py** : push to GitHub
    
- edit .bashrc, replacing REFS with two other aliases:
    - alias TOC='python3 /home/jtk/Site/TOC/TOC.py'
    - alias PUSH='python3 /home/jtk/Site/TOC/PUSH.py $ghbu $ghbp'

- use as:
    - $ TOC fname.md
    - $ PUSH 'Commit message'
    
    
I think to finish TOC.py I need to combine calculation of nr with header extraction, maybe using functions:

- for each line in input.md, extract headers
- for each header, calculate number prefix: 
    - find its header level
    - for headers[1:], find the header level of the preceeding header
- 