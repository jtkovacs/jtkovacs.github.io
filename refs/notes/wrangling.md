# Obtaining data AKA I/O

- [Treehouse - Using Databases in Python](https://teamtreehouse.com/library/using-databases-in-python)
- [https://docs.python.org/3/tutorial/inputoutput.html](https://docs.python.org/3/tutorial/inputoutput.html)

## ... in R


## ... in Python

```Python
# to read or write binary (raw 8-bit):
with open('filename', 'wb') as f: 
f.write(os.urandom(10))

with open('filename', 'rb') as f: 
f.read()

open(file, mode='r', buffering=-1, encoding=None, errors=None, newline=None, closefd=True, opener=None)
# https://docs.python.org/3/library/functions.html


# https://docs.python.org/3/howto/urllib2.html
# download from url: 
import urllib2
ftxt = urllib2.urlopen(“target_url”).read()

# store user input: 
# Python 2:
vname = raw_input('What is your name?\n')
age = int(input("What is your age?")
long_text = sys.stdin.read().strip()
# type ctrl+d for EOF
# Python 3:
vname = input('What is your name?')
age = int(input(‘What is your age? ‘)

# open text file, read single line, remove from memory: 
fhand = open(‘filename.txt’, encoding=’utf-8’)
fhand.readline() 
fhand.close()

# load small text file into string: 
str_name = fhand.read(#bytes)

# load large text file into list: 
l_name = fhand.readlines()

# load text file into pandas dataframe:
from pandas import DataFrame, Series
import pandas as pd
frame=DataFrame(open(‘/file/path.txt’))

# fetch through API: uses urllib2, json, pandas
# https://github.com/katychuang/python-data-sci-basics/blob/master/teachers_notes/api_example.py

# open csv with context manager pattern, load into list: 
import csv
with open(filename,encoding=’utf-8’) as file_in:
my_reader = csv.reader(file_in,delimiter=’\t’)
data = list(my_reader)

# load csv into dict & read dict: 
with open(filename,encoding=’utf-8’) as file_in:
my_reader = csv.DictReader(file_in,delimiter=’\t’) 
data[‘field name’] # retrieve data by column name

# load csv into array: 
my_array = np.genfromtxt(fname,delimiter=’\t’,dtypes=None)

# open JSON: 
import json
with open(‘filename.json’) as myfile:
file = json.load(myfile) # load chooses the closest Python object

# load file into list of dicts using json ’load string’ and a list comprehension:
records = [json.loads(line) for line in open(‘/file/path.txt’,’rb’)

print(*objects, sep=' ', end='\n', file=sys.stdout, flush=False)

# output to screen: 
print(vname) or print vname

# create reusable message: 
message = ’There are {it} items’ 
print(message.format(it=nr_items)

# print columns
print(state,’\t’,count)

# specify display of decimals: 
print(‘Price: ${:03.2f}’.format(price))

# add linebreak: 
print(‘Hello \n world!’)

# clear screen: 
os.system(‘cls’ if os_name == ‘nt’ else ‘clear’)

# output to text: 
# CAUTION: opening existing file with ‘w’ will erase its contents; instead, use ‘a’
fout = open('output.txt', 'w')

# add content to new file: 
fout.write(line)
# save and close file: 
fout.close()

# output to pdf:
from matplotlib.backends.backend_pdf import PdfPages
pp = PdfPages('foo.pdf')
pp.savefig()pp.close()

# https://openpyxl.readthedocs.io/en/default/
import openpyxl
output to excel: save_spreadsheet(“filename”, my_data)

# output to csv: see also unicodecsv
numpy.savetxt("filename", my_data, delimiter=",", fmt="%s")
with open(‘filename’, ‘a’) as myfile:
fnames = [l’A’, ‘B’, ‘C’]
filewriter = csv.DictWriter(myfile, fieldnames = fnames)
filewriter = writerheader()
filewriter = writerow({‘A’: 1, ‘B’:2, ‘C’:3})

# output to JSON:
# output to string: 
json.dumps(my_list)
# output to file:
with open(‘filename.json’, ‘a’) as my_file:
json.dump(list_of_dicts, my_file)
```


### ... integrate database via Peewee ORM

```Python
pip install peewee
from peewee import *

# create & connect to database:
db = SqliteDatabase(‘dbname.db’)
psql_db = PostgresqlDatabase('my_database', user='postgres')
mysql_db = MySQLDatabase('my_database')

# special Python classes called models correspond to tables; 
# specific models inherit from the Model class:
class Student(Model):
username = CharField(maxlength=255, unique=True)
points = IntegerField(default=0)
date = DateTimeField(datetime.datetime.now) # important to omit parantheses in this datetime function call

class Meta():
database = db
if __name__ == ‘__main__’: 
db.connect()
db.create_tables([Student], safe=True)
field types: CharField, IntegerField, TextField, DateTimeFieldfield characteristics: max_length, default, unique

# enter new data: 
Student.create(username=student[unm], points= student[pts])

# update existing data:
record = Student.get(username=student[unm]) → record.points = student[pts] → record.save()
Student.update(points=student['points']). where(Student.username == student['username']).execute()

# find/filter records in table: 
Student.select().order_by(Student.points.desc())
Entry.select().where(Entry.content.contains(search_query), Entry.Date == date)

# delete single record: 
Student.delete_instance(condition)
single_row.delete_instance()

# close connection: 
db.close()

# ordered dict can be useful:
from collections import OrderedDict
menu = OrderedDict([(‘a’, ‘add_entry’), (‘v’, ‘view_entries’)])
returns doc string for function: function_name.__doc__
```

# Cleaning data

## Dirty data typologies

Searching, counting, ranking, grouping, handling whitespace

## ... in R


- [Big Data U - Using R with Databases](http://bigdatauniversity.com/courses/using-r-with-databases/)
- [http://nbviewer.jupyter.org/urls/gist.githubusercontent.com/TomAugspurger/6e052140eaa5fdb6e8c0/raw/811585624e843f3f80b9b6fe89e18119d7d2d73c/dplyr_pandas.ipynb](http://nbviewer.jupyter.org/urls/gist.githubusercontent.com/TomAugspurger/6e052140eaa5fdb6e8c0/raw/811585624e843f3f80b9b6fe89e18119d7d2d73c/dplyr_pandas.ipynb)
- [http://www.alfredo.motta.name/data-manipulation-primitives-in-r-and-python/](http://www.alfredo.motta.name/data-manipulation-primitives-in-r-and-python/)
- [http://www.rdocumentation.org/packages/utils/versions/3.3.1/topics/read.table?](http://www.rdocumentation.org/packages/utils/versions/3.3.1/topics/read.table?)
- library for web scraping: [https://github.com/hadley/rvest](https://github.com/hadley/rvest)
- library: [https://github.com/smbache/magrittr](https://github.com/smbache/magrittr) 


```R
c(4,5,6) > 5  # returns vector of Booleans
my_selection <- my_vec > 5  # create new vector based on selection
# <, > can be used with strings, e.g. "Hello" > "Goodbye"; it compares based on alphabetical order, where A is smallest
# <, > can be used with Booleans, since TRUE == 1 and FALSE == 0 
# one trick: evaluate a vector to yield a Boolean vector, and then sum the Boolean vector: gives #TRUE

print("Your text here")
print(paste("", my_var, "")

seq(a,b,length.out=n)

seq(from = 1, to = 10, by = 1)
# Generate sequences, by specifying the from, to andby arguments.

rep()
# Replicate elements of vectors and lists.

sort()
# Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.

rev()
# Reverse the elements in a data structures for which reversal is defined.

str()
# Display the structure of any R object.

append()
# Merge vectors or lists.

is.*()
# Check for the class of an R object.

as.*()
# Convert an R object from one class to another.

unlist()
# Flatten (possibly embedded) lists to produce a vector.

# load & clean data:
read.table(“url”)

# load custom function: 
load(url(“”))
na.omit(my_data)

# investigate structure of data frame object:
dim(my_df)
names(my_df)
head(my_df)
tail(my_df)
typeof(my_df$my_var)
levels(categorical_var)

sort(my_df)
order(my_df$my_var, decreasing=TRUE)
my_df[order(my_df),]

identical(thing1, thing2)

diff(my_vec)  
# vector of differences between elements in a numerics vector
unique(my_vec)
order() 
# is a function that gives you the ranked position of each element when it is 
# applied on a variable, such as a vector for example
# we can use the output of order(a) to reshuffle a: a[order(a)]

# retrieve data from data frame:
my_df$var_name
# row-and-column style: 
my_df[row#,col#], my_df[row#:range, col#:range], my_df[row#,]
# names style: 
my_df$var_name, mf_df$var_name[row#:range]

# conditional subsetting: 
subset[my_df, condition]
# ==, >, >=, !=, |, &
```


## ... in Python

- [https://docs.python.org/3.5/library/markup.html](https://docs.python.org/3.5/library/markup.html)
- [http://nbviewer.jupyter.org/urls/gist.githubusercontent.com/TomAugspurger/6e052140eaa5fdb6e8c0/raw/811585624e843f3f80b9b6fe89e18119d7d2d73c/dplyr_pandas.ipynb](http://nbviewer.jupyter.org/urls/gist.githubusercontent.com/TomAugspurger/6e052140eaa5fdb6e8c0/raw/811585624e843f3f80b9b6fe89e18119d7d2d73c/dplyr_pandas.ipynb)
- [http://www.alfredo.motta.name/data-manipulation-primitives-in-r-and-python/](http://www.alfredo.motta.name/data-manipulation-primitives-in-r-and-python/)
- [https://docs.python.org/3/howto/sorting.html](https://docs.python.org/3/howto/sorting.html)


```Python
# to check for an empty list, avoid (if len(my_list) == 0)
# prefer this approach:
def check_list_for_members(my_list):
    if not my_list:
        print("Sorry, that's an empty list")
    else: 
        pass

reversed(seq)
sorted(iterable[, key][, reverse])

zip(*iterables)
# Make an iterator that aggregates elements from each of the iterables.

# search file contents: 
for line in fhand:
line = line.rstrip()   # remove whitespace
if line.startswith('From:'): print line
# search more efficiently:
for line in fhand:
line = line.rstrip()
if not line.startswith('From:') : continue 
print line

# find specific string: 
for line in fhand:
line = line.rstrip()
if line.find('desired string') == -1 :  continue
print line

# troubleshooting  whitespace errors: print repr(strname)
inspect pandas dataframe: frame.info()

# count w/ standard library
from collections import defaultdict
def get_counts(data):
counts=defaultdict(int) # initialize to 0
for x in data:
counts[x]+=1
return counts

# rank w/ standard library
from collections import Counter
counts = Counter(data)
counts.most_common(10)

# count w/ pandas
item_counts = frame[‘item’].value_counts()

# clean w/ pandas
clean_field = frame[‘field’].fillna(‘Missing’)
clean_field[clean_field==’’] = ‘Unknown’
clean_frame = framep[frame.a.notnull()]

# plot
item_counts.plot(kind=’barh’,rot=0)

# numpy search for text in frame
result = np.where(clean_frame[field].str.contains(‘text’),’Group 1’, ‘ Group 2’)
# Binary labeling: Group 1 where contains text, Group 2 otherwise

# group & rank  results
results_by_group = clean_frame.groupby([field,result])
group_counts = results_by_group.size().unstack().fillna(0)
indexer=group_counts.sum(1).argsort()
count_subset=group_counts.take(indexer)[-10:]
```


