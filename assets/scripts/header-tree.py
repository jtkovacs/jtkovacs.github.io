

# call:
# $ python header_tree.py


# libraries
import subprocess
import os


# ensure Bash alias cds to ~/Site/refs/notes/

# Bash script creates TXT file of file names 


wd = (subprocess.run(['pwd'])
print(wd)

#print(subprocess.run(['echo', '*.md']))


"""
for file in directory:
    for row in file:
        append name to file
        if row startswith "#"
            append row to file
"""
