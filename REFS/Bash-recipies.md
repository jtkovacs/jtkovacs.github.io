
## USE & ANALYZE > Programming > Bash recipies

<hr/>

- [Write, read, print](#write-read-print)
- [Find and regex](#find)
- [Calculate and analyze](#calculate-and-analyze)
- [Combine and split files](#combine-and-split-files)

<hr/>

### Write, read, print

```Bash
touch ~/dirname/file  # create file, or update its modification timestamp if file already exists
nano file  # open file in text editor
# Hotkeys for nano:
# ^a jumps to beginning of line
# ^e jumps to end of line

head file  # show first 10 lines of file
tail -n 20 file  # show last 20 lines of file
more file  # open long file in special reading view
less file  # open long file in special reading view
# Hotkeys for less:
# D to go forward one page
# U to go up one page
# > to go to end of document
# < to go to top of document
# /regex to search, then n and N to page up and down through results
# q to quit

cat file  # show file contents on screen 
cat file1 file2  # shows concatenated files
tac file  # show content of file in reverse order
clear  # clear the screen by printing many blank lines

lpr file  # send file to default printer
lpr -P printer file  # send file to specified printer
lpq  # display print queue
lprm jobnum  # delete specified job from print queue
lprm -  # delete all jobs from print queue, subject to user permissions
```

### Find and regex

```Bash
find ... # http://ss64.com/bash/find.html, http://do.co/2hrRPfN

# Some Git commands (grep, less, sed, awk, etc.) take regex expressions:
# http://tldp.org/LDP/Bash-Beginners-Guide/html/chap_04.html
# http://www.regular-expressions.info/reference.html
# http://www.regular-expressions.info/refquick.html
grep REGEX file.txt  # searches for regex pattern in filenames
grep -i REGEX file.txt  # option makes grep case-insensitive
grep -R REGEX path/dir/  # searches directory and outputs filename:line of hits
grep -Rl REGEX path/dir/  # searches directory and outputs filename of hits

# In general (ls, cp, etc.), Git uses its own syntaxes for pattern matching and globbing:
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_04_03.html
# http://wiki.bash-hackers.org/syntax/pattern
# http://wiki.bash-hackers.org/syntax/expansion/globs
ls \*{jpg,png}  # list anything ending with either 'jpg' or 'png'
cp \*html dirname  # copy anything ending with 'html' to specified directory
cp [abd]\*.txt dirname  # copy all files beginning with 'a', 'b', or 'c' and ending with '.txt'
cp [!0-9]\*.txt dirname  # copy all files  ending with '.txt', NOT beginning with a number between 0-9
cp [[:upper:]]\* dirname  # copy all files that begin with a capital letter; 
# see also [[:lower:]], [[:digit:]], [[:alpha:]], [[:alnum:]]
cp b?t.txt dirname  # copy all files with exactly one character between 'b' and 't.txt'
cp b??t.txt dirname  # copy all files with exactly two characters between 'b' and 't.txt'
```

### Calculate and analyze

```Bash
cal  # displays month calendar
cal -y  # displays calendar for current year
cal 1995  # displays calendar for 1995
date  # displays UTC date & time

expr 2 + 2  # displays sum; spaces are important
bc  # simple calculator program

wc file  # display text file's #lines, #words, #bytes
wc -L file  # display num_characters in longest line
cat file1 | wc | cat > file2  # create/overwrite file2 with #lines, #words, #bytes of file1

sort file  # sort lines alphabetically
sort -n file  # sort numbers
sort -t: -k4 file  # sort 4th column of semicolon-delineated text file
sort file > new_file  # save sort to file
cat file | sort > sorted-file  # sort items in a file, and save to a new file
sort file1 | uniq > file2  # creates file2, an alphabetized set of file1
# The uniq command filters out adjacent duplicate lines in a file, so always call sort first

sed 's/search_string/replace_string' file.txt  # find and replace 1st occurrence
sed 's/search_string/replace_string/g' file.txt  # find and replace all occurrences
diff file1 file2  # get differences between files
```

#### Combine and split files

```Bash
cat file1 file2 file3 > newfile  # creates or overwrites newfile
cat file2 >> file1  # appends file2 to file1

split [options] filename prefix
# options:
# -l linenumber
# -b bytes

# what about combining files in different directories?

```

