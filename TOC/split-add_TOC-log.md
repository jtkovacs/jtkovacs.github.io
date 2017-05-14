

- create one script apiece
    - **TOC.py** : add header (URLs, word count, numbered TOC), convert to HTML, add anchors and numbers to make links navigable
    - **PUSH.py** : push to GitHub
    
- edit .bashrc, replacing REFS with two other aliases:
    - alias TOC='python3 /home/jtk/Site/TOC/TOC.py'
    - alias PUSH='python3 /home/jtk/Site/TOC/PUSH.py $ghbu $ghbp'

- use as:
    - $ TOC fname.md
    - $ PUSH 'Commit message'