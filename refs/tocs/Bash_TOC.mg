<p class="path"><a href="../pkb.html">pkb contents</a> \> Bash | nearly 2409 words | updated 05/18/2017</p><div class="TOC">- 1. [Bash basics](#bash-basics)
	- 1.1. [What is Bash?](#what-is-bash)
	- 1.2. [Set up Bash](#set-up-bash)
	- 1.3. [Manage system](#manage-system)
		- 1.3.1. [Get more information](#get-more-information)
	- 1.4. [Navigate filesystem](#navigate-filesystem)
		- 1.4.1. [Manipulate filesystem](#manipulate-filesystem)
	- 1.5. [Manage permissions](#manage-permissions)
	- 1.6. [Chain and redirect](#chain-and-redirect)
- 2. [Bash recipes](#bash-recipes)
	- 2.1. [Write, read, print](#write-read-print)
	- 2.2. [Find and regex](#find-and-regex)
	- 2.3. [Calculate and analyze](#calculate-and-analyze)
	- 2.4. [Combine and split files](#combine-and-split-files)
- 3. [Sources](#sources)
	- 3.1. [References](#references)
	- 3.2. [Read](#read)
	- 3.3. [Unread](#unread)
</div>
# 1. Bash basics


## 1.1. What is Bash?

Through a (virtual) terminal you can send commands to the shell, which passes commands along to the OS. You could also write scripts for the shell to run. The terminology around this is muddled because of the way computer architecture has evolved and because the same words are used differently across operating systems and computing subfields ([1](http://stackoverflow.com/questions/21464073/shells-vs-command-interpreters-vs-command-line), [2](http://askubuntu.com/questions/506510/what-is-the-difference-between-terminal-console-shell-and-command-line#comment683259_506510), [3](http://askubuntu.com/questions/506510/what-is-the-difference-between-terminal-console-shell-and-command-line), [4](http://stackoverflow.com/questions/21014344/terminal-or-console-or-shell-or-command-prompt), [5](http://linuxcommand.org/lts0010.php)): 

- A __terminal__ is any environment for text I/O. __Console__ is an old word for a physical terminal. Many terminals are now [virtual](http://askubuntu.com/questions/14284/why-is-a-virtual-terminal-virtual-and-what-why-where-is-the-real-terminal), also called terminal emulators. In Unix, "everything is a file"; a terminal is controlled by a [tty device file](http://www.linusakesson.net/programming/tty/index.php).
- A __shell__ is a very general term meaning any program that controls and runs other programs; however, a command line shell (also called a __CLI__, command line interface) is often called 'the shell' for short.  The term comes from [Unix architecture](https://en.wikipedia.org/wiki/Unix_architecture): shell wraps around kernel which wraps around hardware. 
- __Bash__ is the default CLI for Linux and Mac. Windows has Command Prompt; to get Bash for Windows, install [Cygwin](https://cygwin.com/install.html).

In addition to commands that are typed and entered, Bash responds to hotkeys (`^` means `ctrl`): 

```Bash
# tab to autocomplete
# ^L to clear the screen
# ^d sends EOF
# ^c interrupts/quits
# ^k to kill (cut)
# ^y to yank (paste)
# q to quit (sometimes)
```

## 1.2. Set up Bash

Bash lets you control your environment by adding messages, defining aliases, setting the values of environment variables, etc. 

- Defining an alias means giving a new name to an existing command or giving a name to a whole sequence of existing commands. Define aliases by adding them to `.bash_profile` or, to make them persist across sessions, to `.bashrc`.
- Environment variables are used across commands, sessions, and programs:
  - `$HOME`: path of home directory
  - `$PATH`: directories containing command line scripts
  - `$PS1`: defines style of command prompt

```Bash
nano ~/.bash_profile  # create/edit preferences file
source ~/.bash_profile  # activates newly edited profile for current session

echo message_string  # add new session greeting message to .bash_profile

alias  # displays all current aliases 
alias pd="pwd"  # rename an existing command
alias nwnano = "touch file1 && nano file2"  # make new command from sequence of existing commands
unalias pd  # removes alias

env  # view all environment variables
env | grep REGEX  # filter and view environment variables
export USER = "user_name"  # type in .bash_profile to create environment variable
echo $USER  # print environment variable
```

## 1.3. Manage system

```Bash
df  # check space on disk, in KB
df -h  # " in MB/GB
watch -n 5 [command]  # repeat a command or script even 5 seconds
watch -n 10 free -m  # show memory usage in MB every 10 seconds

top  # list top processes
ps aux  # list all running processes
ps aux | grep regex_pattern  # search running processes
kill processID  # get PID from ps aux's output
kill -9 processID  # kill process immediately

sudo -i #   pushes terminal into root until you type “exit”

sudo apt-get update  # fetch list of available packages
sudo apt-get upgrade  # updates packages according to apt-get update's list
sudo apt-get dist-upgrade  # like apt-get upgrade, but handles dependencies better

# analyze boot speed
cat /proc/sys/vm/swappiness
systemd-analyze-blame
Df -h, checks disk space and partition usage
```

### 1.3.1. Get more information
 
```Bash
lsb_release -a  # Linux version
nano /etc/issue  # Linux version
uname -a  # information about system: Linux or Unix, 32- or 64-bit, etc.
hostname  # computer's network name
groups  # list of all groups your username is in
host domain  # DNS lookup on URL, IPv4, IPv6

history  # view commands history
!hnum  # re-run a command using its history number
history -c  # clear history

help command_name
type command_name
which command_name
file path/command_name
man command_name  # documentation; type 'q' to exit
man -k searchstring  # search in mans' short descriptions for searchstring
apropos command_name  # find appropriate man page 
whatis command_name  # one-line man page summary
# ^R to 'reverse-i-search' the command history
```

## 1.4. Navigate filesystem

The __Linux filesystem__ is a tree of directories (folders) containing files. Unlike Windows, the Linux filesystem has a single root directory. Typically, in addition to users' home directories, root will contain these directories:

- __bin__: binary files/shell scripts available to all programs
- __opt__: commercial software installations
- __temp, var__: files that change a lot or are frequently deleted, e.g. logs

__Directory and file names__ in Linux are case sensitive, but Linux does not require you to specify file extensions. Names can include any character except /, although to do so some characters (`$, <, >, &, |, ;, ", ', \`) must be escaped `\` or contained by quotes. A directory or file will be hidden if its name begins with a period. 

In addition to a name, every directory and file has an __address__ (or path) that can be given in absolute terms (starting from the root: `/dir1/dir2/filename`) or in relative terms (starting from the current location: `dir2/filename`, if `dir1` is your current location). When specifying an address, there are shortcut symbols denoting different parts of the filesystem:

```Bash
pwd  # print working directory (current location)

cd path/directory_name  # move to a new directory
cd ../../dirname  # go two directories up, then down
# /, the root
# ~, the user's home directory
# ~username, a specified user's home directory
# ., the current directory
# .., the current directory's parent directory 
# –, the prior working directory

ls  # list files in the working directory 
ls -a  # list hidden files too
ls -t  # list by time-last-modified instead of alphabetically
ls -r  # list content in reverse order
ls -art  # options can be chained; equivalently, ls -a -l -t

ls -R  # list all content in working directory, including content in subdirectories 
find  # list all files contained in the working directory and its subdirectories; same as ls -aR
```

### 1.4.1. Manipulate filesystem

Based on [Bruce Barnett's summary](http://www.grymoire.com/Unix/Inodes.html), Unix/Linux files consist of data and inode metadata; and a Unix/Linux directory is a table associating file names with inodes. Try to visualize the operations below in these terms; for example (based on a [response in an Arch Linux forum](https://bbs.archlinux.org/viewtopic.php?id=53484)), consider the difference between

- __copying a file__: you have two files with different inodes; if you edit or delete one file, the other is unchanged
- __creating a hard link to a file__: you have one file with one inode with multiple names; if you edit under one name, the file changes for them all, but if you delete one, the others are unaffected
- __creating a soft link (or shortcut, or symbolic link, or pointer) to a file__: you have one file or directory that has one inode, but you can get to it via shortcuts which have their own inodes; if you delete the file, the shortcuts break, but if you delete the shortcuts, the file is fine

```Bash
mkdir dir_name  # create directory
touch ~/dirname/file.txt  # create file
curl http://url  # downloads file from URL
unzip file.zip

cp fromfile tofile  # move contents of one file into another; will overwrite existing tofile
cp file1 file2 todir  # copy two files to specified directory
cp bash_pattern todir  # copy all files matching pattern to directory
cp -R fromdir1 todir2  # copy dir1 into dir2

ls -i  # show inode #s as well as names
ln file hardlink  # create hard link
ln -s file softlink  # create soft link

mv file1 file2 todir  # move files or directories to directory
mv -i file todir  # adds confirmation step to prevent overwrites
mv filename new_filename  # rename a file or directory

rm file1 file2  # delete file/s 
rmdir dirname  # deletes directory IF empty
rm -R dirname  # delete directory and its contents
```

## 1.5. Manage permissions

[A detailed view of a directory's contents](http://linuxsurvival.com/linux-file-security-permissions-part-2/) includes, for each item in this order, the item's permissions; the number of hard links to it; its owner; its group; its size (as number of bytes); the date and time of its last modification; and its name. [Permission are expressed in a 9 digit-long code](http://linuxsurvival.com/linux-file-security-permissions-part-3/), where the first three digits encode the owner's permissions; the next three digits encode the owner's group's permissions; and the last three encode everyone else's. Then, each three digit cluster encodes read-write-execute permissions as yes (`r`, `w`, `x`) or no (`-`). Examples: `rwx------`, `rw-rw-r--`, `rwxrwxr-x`.

```Bash
ls -l  # list in long form
chmod ugo+rwx dirname  # give user, group, and others read, write and execute permission
chmod o-w filename  # revoke others' write permission
chown <new_username>:<new_groupname> filename  # change ownership
```

## 1.6. Chain and redirect

Rather than typing and entering one at a time, commands can be **chained**: entered as a sequence separated by `;` or `&&`, then executed. In the semicolon method, if a command fails, Bash still tries to execute commands that follow it. In the ampersand method, if a command fails then the remaining ones simply aren't run. Chaining is meant to be a time-saver.

[**Redirection** goes beyond chaining](http://linuxcommand.org/lc3_lts0070.php). Each command has standard input (`stdin`), standard error (`stderr`), and standard output (`stdout`); by way of special characters (`>, >>, <, |`), any of these can be passed to and used by another command, file, or program. This means we don't need to create variables for storing this data.

```Bash
cat > file  # create file by rdct cat's stdin to file; exit with ctrl+d
cat >> file  # create file by rdct cat's stdin, appends to file (if exists)
echo "hello" > file  # create file by rdct echo's stdout from terminal to file

cat file1 > file2  # copy file by rdct cat's stdout from terminal to file2

cat < file  # display file by rdct to cat's stdin; same as >> cat file
cat file | less  # display large files by rdct cat's stdout to less's stdin
```



# 2. Bash recipes

## 2.1. Write, read, print

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

## 2.2. Find and regex

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

## 2.3. Calculate and analyze

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

## 2.4. Combine and split files

```Bash
cat file1 file2 file3 > newfile  # creates or overwrites newfile
cat file2 >> file1  # appends file2 to file1

split [options] filename prefix
# options:
# -l linenumber
# -b bytes
``` 


# 3. Sources

## 3.1. References

- Command line cheatsheets - [Mac](http://ss64.com/osx/), [Linux Bash](http://ss64.com/bash/), [Windows PowerShell](http://ss64.com/ps/)
- Software Carpentry’s [Unix shell cheatsheet](http://swcarpentry.github.io/shell-novice/reference/)
- [Bash keyboard shortcuts for maximum productivity](http://www.skorks.com/2009/09/bash-shortcuts-for-maximum-productivity/)
- [Bash reserved variables](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html#table_03_02)

## 3.2. Read

- [Codecademy - Command Line](https://www.codecademy.com/learn/learn-the-command-line)
- [Udacity - Linux Command Line Basics](https://www.udacity.com/course/linux-command-line-basics--ud595)
- [Udemy - Linux command line basics](https://www.udemy.com/linux-command-line-volume1/)
- [Linux Survival - Command line tutorial](http://linuxsurvival.com/linux-tutorial-introduction/)
- [The importance of command line literacy](http://www.linux-mag.com/id/7096/)

## 3.3. Unread
- [Data science at the command line](http://datascienceatthecommandline.com/): book, webcast, VM 
- [How to spy on your programs with strace](http://jvns.ca/strace-zine-unfolded.pdf) (pdf)
- [Talks by Julia Evans](http://jvns.ca/talks/)

