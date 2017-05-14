


# Load libraries
import os
import subprocess
import sys


# Navigate to Site directory
os.chdir('/home/jtk/Site')


# Stage all files
subprocess.run(['git', 'add', '.'])


# Commit locally
commit_msg = sys.argv[3]
subprocess.run(['git', 'commit', '-m', 'Changes to {}'.format(commit_msg)])


# Push to GitHub
# alias PUSH supplies uname, pw
uname = sys.argv[1]
pw = sys.argv[2]
subprocess.run(['git', 'push', '-q', '--repo', 'https://'+uname+':'+pw+'@github.com/'+uname+'/jtkovacs.github.io.git'])
subprocess.run(['git', 'fetch', '-q'])
