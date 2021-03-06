<p class="path"><a href="../pkb.html">pkb contents</a> \> python | just under 4704 words | updated 10/24/2017</p><div class="TOC">- &nbsp;1. [Environment](#environment)
	- &nbsp;1.1. [Command line](#command-line)
		- &nbsp;1.1.1. [Launch Python from Bash](#launch-python-from-bash)
		- &nbsp;1.1.2. [IPython](#ipython)
		- &nbsp;1.1.3. [Run Python script from Bash](#run-python-script-from-bash)
		- &nbsp;1.1.4. [Take arguments from command line](#take-arguments-from-command-line)
	- &nbsp;1.2. [Jupyter Notebook](#jupyter-notebook)
		- &nbsp;1.2.1. [Working with Bash](#working-with-bash)
		- &nbsp;1.2.2. [Magics](#magics)
		- &nbsp;1.2.3. [Rich display](#rich-display)
		- &nbsp;1.2.4. [IPython widgets](#ipython-widgets)
	- &nbsp;1.3. [Managing modules](#managing-modules)
	- &nbsp;1.4. [Which modules?](#which-modules)
- &nbsp;2. [Language](#language)
	- &nbsp;2.1. [Fundamental characteristics](#fundamental-characteristics)
	- &nbsp;2.2. [Operators](#operators)
	- &nbsp;2.3. [Control flow statements](#control-flow-statements)
	- &nbsp;2.4. [Comprehensions](#comprehensions)
	- &nbsp;2.5. [Generator expressions](#generator-expressions)
	- &nbsp;2.6. [Datatypes](#datatypes)
		- &nbsp;2.6.1. [Booleans](#booleans)
		- &nbsp;2.6.2. [Numerics](#numerics)
		- &nbsp;2.6.3. [Sequences](#sequences)
			- &nbsp;2.6.3.1. [Strings, bytes, & unicode](#strings-bytes-unicode)
			- &nbsp;2.6.3.2. [Lists](#lists)
			- &nbsp;2.6.3.3. [Queues](#queues)
			- &nbsp;2.6.3.4. [Tuples](#tuples)
		- &nbsp;2.6.4. [Sets](#sets)
		- &nbsp;2.6.5. [Dictionaries](#dictionaries)
		- &nbsp;2.6.6. [Datetimes](#datetimes)
	- &nbsp;2.7. [Functions](#functions)
	- &nbsp;2.8. [Closures](#closures)
	- &nbsp;2.9. [Decorators](#decorators)
	- &nbsp;2.10. [Style](#style)
		- &nbsp;2.10.1. [Spacing](#spacing)
		- &nbsp;2.10.2. [Naming](#naming)
		- &nbsp;2.10.3. [Structure](#structure)
		- &nbsp;2.10.4. [Namespace & docstrings](#namespace-docstrings)
- &nbsp;3. [Paradigms](#paradigms)
	- &nbsp;3.1. [Object-oriented Python](#object-oriented-python)
		- &nbsp;3.1.1. [Methods](#methods)
	- &nbsp;3.2. [Functional Python](#functional-python)
		- &nbsp;3.2.1. [Lambdas](#lambdas)
		- &nbsp;3.2.2. [Currying](#currying)
		- &nbsp;3.2.3. [Map-reduce, filter, etc.](#map-reduce-filter-etc.)
	- &nbsp;3.3. [Test-Driven Development](#test-driven-development)
		- &nbsp;3.3.1. [Logging, errors, & debugging](#logging-errors-debugging)
			- &nbsp;3.3.1.1. [Raising an error](#raising-an-error)
- &nbsp;4. [Sources](#sources)
	- &nbsp;4.1. [References](#references)
	- &nbsp;4.2. [Read](#read)
	- &nbsp;4.3. [Unread](#unread)
</div>
# 1. Environment

## 1.1. Command line

### 1.1.1. Launch Python from Bash

```Bash
python --version
python  # launches some version of python 2
python3  # launches some version of python 3
quit()

python fname.py  # run a script
```

### 1.1.2. IPython

IPython is a special shell that adds some functionality versus the normal Python shell:

- Input/output history
- Reverse search with ctrl-r
- Tab completion

```Python
$ ipython
%history
In
Out
```

### 1.1.3. Run Python script from Bash

```Python
# this code will run only if the script is executed from the command line
# it won't run if the script is imported by another script
if __name__ == '__main__':
    ...
```

### 1.1.4. Take arguments from command line

```Python
import sys
script_name = sys.argv[0]
for arg in sys.argv[1:]:
    ...
```


## 1.2. Jupyter Notebook

Jupyter Notebook has two modes: **command mode,** where you're manipulating cells (access via `esc` key) and **edit mode,** where you're working inside them (access via 'enter' key).

Shortcuts (view all with `esc` + `h` keys:

- `dd` deletes a cell

```Bash
jupyter notebook  # launches JN in browser
# quit JN by typing ctrl+c twice in the command line
# share JN by uploading it to GitHub --> http://nbviewer.jupyter.org/

<object>? # view help
<object.*ing> # wildcard match

<object>?? # view source code
```

### 1.2.1. Working with Bash

```Python
!<shell command> # calling a Bash command from Jupyter Notebook
x = !cat fname.txt # saving results of Bash command to a Python variable
!cat {my_fname} # passing contents of Python variable to a Bash command
```

### 1.2.2. Magics

- Help: `%magic`
- View all: `%lsmagic`
- Line magics: `%<magic>`
- Cell magics: `%%<magic>`

```Python
# profile code
%%timeit
<code>

%timeit <code>

%%file fname.ext # create a file
% run fname.py # run a script

%matplotlib # graphing options

```

### 1.2.3. Rich display

Jake VanderPlas' code:

```Python
# create a class which defines the _repr_html_ method, returning a string of HTML
class RedText(object):
    def __init__(self, text):
        self.text = text

    def _repr_html_(self):
        return "<font color='red' size=24>" + str(self.text) + "</font>"

RedText('hello there')

# example 2
class ListDisplay(object):
    def __init__(self, L):
        self.L = L

    def _repr_html_(self):
        output = '<ul>'
        for value in self.L:
            output += "<li>" + str(value) + "</li>"
        output += "</ul>"
        return output

my_list = [1, 2, 3]
ListDisplay(my_list)
```

### 1.2.4. IPython widgets

Jake VanderPlas: "transform simple Python functions into interactive widgets"

- [Documentation](https://ipywidgets.readthedocs.io/en/stable/)
- [Widget list](https://ipywidgets.readthedocs.io/en/stable/examples/Widget%20List.html)

```Python
# Initial install
!conda install ipywidgets
!jupyter nbextension enable --py widgetsnbextension

from ipywidgets import interact
```


## 1.3. Managing modules

[Libraries/packages are directories of Python scripts/modules](https://docs.python.org/3/tutorial/modules.html#packages); each script contains special functions, methods, and/or types.

```Python
python3 get-pip.py
pip3 install module_name

import module_name  # use functions from module as module_name.function_name()
import module_name as nickname  # use functions as nickname.function_name()

from module_name import function_name  # partial import; use function as function_name()
from module_name import *  # full import; bad practice because:
# (1) it floods __name__, the local namespace;
# (2) names you’ve defined locally or have previously imported may be overwritten;
# (3) the module's contents are no longer contained in the module's namespace

dir(module_name)  # view contents of module
```

## 1.4. Which modules?

See also: Doug Hellmann's [Python Module of the Week](https://pymotw.com/2/contents.html), SciPy's [directory of science-related Python resources and modules](https://www.scipy.org/topical-software.html), Fredrik Lundh's [tour of the Python standard library modules](http://effbot.org/media/downloads/librarybook-core-modules.pdf) [pdf], the [Python Module Index](https://docs.python.org/3/py-modindex.html), and libraries included in the [ActivePython](http://docs.activestate.com/activepython/3.5/pkg/) and [Anaconda](https://docs.continuum.io/anaconda/pkg-docs) Python distributions:

- For data wrangling - `collections (defaultdict), pandas (dataframes), numpy (arrays), GraphLab Create`
  - For datetimes - `datetime, pytz`
  - For web scraping & parsing - `urllib2, requests, scrapy, beautifulsoup, robobrowser`
  - For I/O - `csv, json, lxml`
- For data analysis - `math, statistics, random, numpy`
- For data visualization - `matplotlib, seaborn, prettytable, tablib, bokeh (interactives)`
- For scientific computing - `scipy (integrals, diffeqs, matrixes)`
- For machine learning - `scikit-learn, GraphLab Create`
- For text analysis - `nltk, re, string`
- For functional Python - `operator, functools`
- For testing - `nose, logging, coverage, unittest, exceptions, pdb`




# 2. Language

## 2.1. Fundamental characteristics

- Python prioritizes readability and simplicity; `import this`
- Python is extremely picky about indentation, e.g. to define functions
- Python is case sensitive and has several [reserved words](http://pentangle.net/python/handbook/node52.html)
- Python uses [zero-based indexing](http://python-history.blogspot.com/2013/10/why-python-uses-0-based-indexing.html)

## 2.2. Operators

```Python
ASSIGNMENT operators
a = 1
b = 2; c = 3
d = a == b # returns False

# COMPARISON operators
a == b  # checking equality/equivalency; returns True
a != b  # returns False
a is b  # checking identicality; returns False
a is not b  # returns True
a <= b  # inequality
a < b  # strict inequality

# LOGIC operators are used for selection and filtering;
# also with conditional operators to control program flow, although
# multiline if/else expressions are often more readable than complex Booleans
if x > y or y != 1:
    print(x)

between1_and5 = [i for i in my_list where i > 1 and i < 5] # a list comprehension

# avoid negation of positive expressions, e.g. if not a is b
# prefer inline negation:
if x is not y:
    print(x)

all(my_iterable)  # returns True if my_iterable is empty, or all its elements are True
any(my_iterable)  # returns False if my_iterable is empty, or any element is False
```



## 2.3. Control flow statements

```Python
# CONDITIONAL operators:
if x > 2:
    continue  # jumps to next iteration
elif x < 0:
    if x == -1:  # conditionals can be nested
        break  # completely exits loop
else:
    # if included, else clause must be at the end  elif, else

# there is a conditional execution structure for errors;
# this is called catching an exception:
try: # to run code based on input
except: # ask for better input
else: # execute if try was successful; visually distinguishes the success case
finally: # run if all prior code has failed, e.g. close file handles

# DEFINITE loop:
for i in [set]: …
# or range(x) in python3 // xrange(x) in python2
# or range(len(my_list) in python3 // range(x) in python2
# or i, em in enumerate(my_iterable, [starting_index])

# INDEFINITE loop:
while [condition]: …
```



## 2.4. Comprehensions

Often, `for` loops can be conveniently replaced with a comprehension. Comprehensions can be fairly complex, but at a certain point it's better to switch back to a loop.

```Python
squares = [i**2 for i in range(10)]  # list comprehension
squares3 = [i**2 for i in range(30) if i%3==0]   # conditional list comprehension
two_filter = [x for x in a if x>4 if x%2==0]  # multiconditional list comprehension
squared = [[x**2 for x in row] for row in matrix]  # nested list comprehensions

grid_list = [(x,y) for x in rows, y in cols]   # list comprehension returns list of tuples
set = {num * 2 for num in [5, 2, 18, 2, 42, 2]}  # set comprehension

# dictionary comprehensions
squares_dict = { i : i**2 for i in range(20)}
transposed_dict = {dict[key]:key for key in dict}
dict = {letter: num for letter, num in zip('abcdef', range(1, 7))}
```



## 2.5. Generator expressions

A [generator expression](http://anandology.com/python-practice-book/iterators.html), also called a naked comprehension, is useful for processing large datasets because intermediate results are not stored, so RAM isn't overwhelmed.

- Generators are "stateful"
- You won't get any errors when you iterate over an already exhausted iterator; see pp. 40-41 of _Effective Python_.
- Generators are great for functional programming; they execute very quickly when chained together

```Python
it = (len(x) for x in open('myfile.txt'))
print(next(it))
print(next(it))

roots = ((x, x**0.5) for x in it)
print(next(roots))

sum(i**2 for i in range(10))

list(my_generator(data))  # to convert generator to list, but why??
```



## 2.6. Datatypes

Overview of [standard types](https://docs.python.org/3.5/library/stdtypes.html):

- Numerics are integers, floats, complex(re,im), decimals
- Sequences are strings, lists, queues, tuples, ranges
- Strings, bytes, unicode are character types
- Collections AKA containers are lists, queues, tuples, sets, dicts;
  - Collections support operators `in, not in`
  - Not all containers are iterable, see [iterables vs iterators vs generators](http://nvie.com/posts/iterators-vs-generators/)
  - The only container also a mapping is dict

```Python
print(type(my_var))  # check type
print(repr(my_var))  # printable representation; differentiates '5' and 5 when printing

str()  # convert to string
text.decode('utf-8')  # convert bytes to unicode
text.encode('utf-8')  # convert unicode to bytes

int()  # convert numeric to integer
my_int.to_bytes(length, byteorder=big, *, signed=False)  # OverflowError if too small
my_int.from_bytes(bytes, byteorder=little, *, signed=True)
my_integer.bit_length()  # how many bits to represent an integer?

# also bool(), float()
```

### 2.6.1. Booleans

- In addition to Boolean operands `True` and `False`, all Python objects have truth values
- `None`, `0` for any numeric type, and empty collections evaluate as `False`

### 2.6.2. Numerics

```Python
my_float = 5.519
abs(my_float)
sum(my_iterable)  # sum up numerics stored in an iterable
round(my_float[, n])  # round float to n digits; n defaults to 0

# standard numeric operators;
# Python converts types as necessary to perform operations:
2 + 3  # addition
2 - 3  # subtraction
2 * 3  # multiplication
2 ** 3  # exponentiation
6 / 3  # division
7 % 2  # modulo; returns remainder of division, e.g. 7/2 = 2*3 + 1, the remainder is 1
5 // 2  # floor division, AKA integer division; divides int by int, drops remainder; e.g. 5//2 = 4
divmod(5, 2)  # returns (x//y, x%y)

import math
math.factorial(my_integer)
math.sqrt(my_float)
math.pi  # a constant
math.e  # a constant
math.gcd(my_float1, my_float2)  # greatest common divisor
math.trunc(my_float)  # truncates float to integer part, without rounding
math.floor(my_float)  # greatest float(integer) less than or equal to x
math.ceil(my_float)  # smallest float(integer) greater than or equal to x
math.log(my_float[, base])

# the decimal library is useful for currency:
import decimal
my_decimal_price = Decimal('5.003')
my_decimal_price.quantize(Decimal('0.01'), rounding=ROUND_UP) # returns 5.01
```

### 2.6.3. Sequences

```Python
# Operations supported for all sequences:
x not in s  # membership check; returns True or False
x in s

s * n  # adds s to self n times, n is an integer
s + t  # concatenation
len(s)
min(s)
max(s)

# Addressing for all sequences:
s.index(x[, i[, j]])  # find index of element x between optional i (inclusive) to j (exclusive)
s[i:j:k]  # slice s, taking every kth item from index i (inclusive) to j (exclusive)
# More slicing syntax: s[:], s[i:], s[:j], s[-3:-1]
# Stride k can be negative, but keep it positive to avoid confusion
# For readability, consider two statements: one to stride, the next to slice
```

#### 2.6.3.1. Strings, bytes, & unicode

Like lists, strings are composed of elements that can be accessed via their index. Unlike lists, strings are immutable: individual elements cannot be deleted or modified.

- Your program should use unicode at its core, with helper functions to convert input and output:
  - Convert bytes (or string of bytes): `text.decode('utf-8')`
  - Convert unicode string: `text.encode('utf-8')`
- In Python 3, `str()` is unicode, `bytes()` is raw 8-bit. In Python 2, `str()` is raw 8-bit, `unicode()` is unicode
- String output is formatted with with [.format() and its mini-language](https://docs.python.org/3.5/library/string.html#formatstrings), since [% formatting is depreciated](https://docs.python.org/3.5/library/stdtypes.html#printf-style-string-formatting)

```Python
my_string1 = 'allows embedded "double" quotes'
my_string2 = "allows embedded 'single' quotes"
my_string3 = 'quotes can be \'escaped\' using the backslash character'

print("Hello " + user_name + ", how are you doing?") # string concatenation

# split string
my_str.partition(sep)  # returns 3-tuple: (str_before_separator, separator, str_after_separator)
my_str.split(sep=None, maxsplit=-1)  # split string every time delimiter occurs or #maxsplit
my_str.splitlines([keepends])  # keepends is a Boolean

' '.join(my_iterable)  # join elements in an iterator using ' ' as the separator between elements
my_string.replace(old, new[, count])  # optional 'count' specifies #instances to replace
my_string.isalpha()  # False if nonalphabetic character in string
my_string.zfill(width)  # left-pads a string with zeros
my_string.ljust(width[, fillchar])
# Many of these methods have counterparts that start from the end of the string
# s.rindex(), s.rfind(), s.rpartition(), etc.
```

#### 2.6.3.2. Lists

Lists store multiple elements of any type, including mixed type and including other lists. Lists are mutable; unlike string methods, most list methods alter the list in-place and return None. Lists are both sequences and containers.

```Python
my_list = list()
my_list = []
my_list = list('abc')
my_list = ['a', 'b', 'c']
my_list = [i for i in range(len(n))]

b = a  # an ALIAS, not a copy! a is b; changes to b affect a
b = list(a) # copies list; b is equivalent, but not identical to a
b = a[:]  # copies list; b is equivalent, but not identical to a

em in my_list  # check membership

my_list[i[:j]] = em  # update list; em will replace slice i:j, even if len(em) < len(list[i:j])
my_list.insert(index, em)  # adds element at index
my_list.append(my_list2)  # adds element/s at end of list
my_list1 + my_list2  # adds element/s at end of list
my_list.extend(em)  # adds element/s at end of list; faster for large lists

my_list.remove(em)
del my_list[i:j]
my_list.pop([i])  # deletes and returns last element, or ith element

' '.join(my_iterable)  # join elements in an iterator using ' ' as the separator between elements
my_list.reverse()  # reverses list elements in-place
sum(my_list)  # if list elements are numerics
my_list.sort()  # sorts list elements in place
my_sorted_list = sorted(my_list, reverse=False)  # returns sorted copy of unaltered list
# https://wiki.python.org/moin/HowTo/Sorting
```

#### 2.6.3.3. Queues

Use a [double-ended queue](https://docs.python.org/3/library/collections.html#deque-objects), a list-like datatype, when you need to quickly insert or remove items from the end and beginning (deques are a stack-queue hybrid):

```Python
import collections
my_deque = deque()

my_deque.appendleft(em)  # add element to left
my_deque.insert(i, em)  # add element at specified index
my_deque.append(em)  # add element to right
my_deque.reverse()  # reverses elements in place, returning None

my_deque.popleft()  # remove and return element from left
my_deque.pop()  # remove and return element from right
```

Use a [heap queue](https://docs.python.org/3/library/heapq.html) when you want a list that's automatically sorted:

```Python
import heapq
my_heap = list()
heappush(my_heap, 3)  # add element
heappush(my_heap, 5)
heappush(my_heap, 1)

my_list = [3, 5, 1]
my_heap = heapify(my_list)

my_heap[0]  # always returns lowest number; here, 1
print(heappop(my_heap), heappop(my_heap))  # removes and prints lowest, next lowest, etc.; here 1, 3
```

#### 2.6.3.4. Tuples

Tuples addressing works like list addressing; unlike lists, though, tuples are immutable. When comparing tuples, Python proceeds on an index-by-index basis. Tuples are used for composite dictionary keys and multivariable assignment:

```Python
my_tuple = 'a',
my_tuple = 'a','b','c','d','e'
my_tuple = tuple(my_iterable)

a = 1,2,
b,c = a  # multivariable assignment, aka unpacking a tuple; b=1, c=2
d=b,c  # packing a tuple; d=1,2 and a==d

directory_dict[last,first] = 'phone_number'  # tuple as composite key
for last, first in directory_dict:
        print first, last, directory_dict[last,first]
```

### 2.6.4. Sets

The value of sets is access to set operations; by design, seys lack slicing and indexing:

```Python
my_set1 = {'a', 'b'}
my_set2 = set(['a','b','c'])

x in my_set1  # True if x an element of set

words_unique = list(set(words))  # find unique values

my_set1.add(elem)
my_set1.remove(elem)  # raises KeyError if elem not in set
my_set1.discard(elem)
my_set1.pop()  # remove and return arbitrary element
my_set1.clear()  # deletes all elements

my_set1.isdisjoint(my_set2)  # True if nonoverlapping sets
my_set1.issubset(my_set2)
my_set1.union(my_set2)  # creates a new set from union of sets
my_set1.intersect(my_set2)  # creates a new set from intersection of sets
my_set1.difference(my_set2)  # creates a new set: set1 - set2
my_set1.symmetric_difference(my_set2)  # creates a new set: (set1-set2)U(set2-set1)
# many of these operations have more mathematical-looking alternative notation:
# https://docs.python.org/3.5/library/stdtypes.html#set-types-set-frozenset
```

### 2.6.5. Dictionaries

A dictionary maps keys to values; values are retrieved via their key, doing away with indices. A dictionary is much faster to search than a list, and is often used to count letter or word occurrences in a block of text.

```Python
a = dict(one=1, two=2, three=3)
b = {'one': 1, 'two': 2, 'three': 3}
c = dict(zip(['one', 'two', 'three'], [1, 2, 3]))
d = dict([('two', 2), ('one', 1), ('three', 3)])
assert a == b == c == d

my_dict1.update(my_dict2)  # concatenate dictionaries
my_dict['key'] = 'value'  # add element
del my_dict['key']  # delete element
my_dict.clear()  # remove all elements
if key in my_dict: ...  # test membership

# ways to view or unpack a dictionary
for pairs in my_dict.items(): ...
for k, v in my_dict.items(): ...
for k in my_dict.keys(): ...
for v in my_dict.values(): ...
print("{}: {}".format(**my_dict))
assert iter(my_dict) == iter(my_dict.keys())  # returns an iterator of dictionary keys

my_dict.pop('k'[, default_value])  # returns and deletes a random element, or returns default_value
my_dict.popitem()  # deletes and returns arbitrary (k, v) pair
my_dict.setdefault('k'[, default_value])  # return v if k exists, otherwise set k=default_value, returns v
my_dict.get('k'[, default_value])  # returns default_value if k not found; otherwise returns v
my_dict['key'] = my_dict.get('key',0) + 1  # counter

# special dictionaries
import collections
my_ordered_dict = OrderedDict()  # recalls order in which its populated
my_default_dict = defaultdict(int)  # sets default_value == 0, ready to increment
my_default_dict['key'] += 1  # increment values initialized at 0
```

### 2.6.6. Datetimes

Code should convert local datetimes to UTC, perform computations, then convert back to local datetimes for display purposes.

```Python
import datetime
import pytz  # a database of timezones
# http://www.saltycrane.com/blog/2009/05/converting-time-zones-datetime-objects-python/

# get current date/time
my_current_datetime = datetime.datetime.now(tzinfo=my_timezone)
my_current_date =  now.date()
my_current_time = now.time()

# create naive datetime object: doesn't know its timezone
naive_datetime_from_timestamp = datetime.datetime.fromtimestamp(my_posix_timestamp)
naive_datetime = datetime.datetime(my_year, my_month, my_day[, my_hour[, my_min[, my_sec[, my_microsec]]]])

# create timedelta objects for timezone assignment/conversion
pacific_tz_offset = datetime.timezone(datetime.timedelta(hours=-8))
eastern_tz_offset = datetime.timezone(datetime.timedelta(hours=-5))

# create aware datetime object: knows its timezone
my_pacific_datetime = datetime.datetime(my_year, my_month, my_day, my_hour, tzinfo=pacific_tz_offset)
my_pacific_datetime = my_naive_datetime.astimezone(pacific_tz_offset)

# create timedelta object to manipulate datetime objects
my_inc_5hrs = datetime.timedelta(hours=5)

# access or update a datetime object
my_incremented_datetime = my_datetime + my_inc_5hrs
my_datetime.replace(hour=my_new_hour)
my_year = my_datetime.year

# convert datetime from string
my_datetime.strftime(my_format_string)
# Format string mini-language: %Y-%m-%d %H:%M:%S %Z%z
# https://docs.python.org/3/library/datetime.html?highlight=datetime#strftime-and-strptime-behavior
```



## 2.7. Functions

Functions are pieces of reusable code that solve particular tasks. Brett Slatkin, _Effective Python_, p. 10:

> As soon as your expression get complicated, it's time to consider splitting them into smaller pieces and moving logic into helper functions. What you gain in readability always outweighs what brevity may have afforded you. Don't let Python's pithy syntax for complex expressions get you into a mess ...

- Notation: `fname(req_arg[, opt_arg])`
- Function calls can be nested: `print(type(var_name))`
  - With nesting, inner functions have access to the scope of the outer functions
- Functions can be recursive (can return a call to themself)
- __Write functions to raise exceptions__; expect the calling code to _handle_ exceptions

```Python
help(fname.mname)
%timeit function(argument)  # in Jupyter Notebook

# more about function arguments:
# http://stackoverflow.com/a/1419160
# http://markmiyashita.com/blog/python-args-and-kwargs/
# http://geekodour.blogspot.com/2015/04/args-and-kwargs-in-python-explained.html
# https://docs.python.org/3.5/tutorial/controlflow.html#more-on-defining-functions
# *args makes a tuple; **kwargs makes a dictionary
def my_func(positional_arg, optional_keyword_arg = default_value, *args, **kwargs):
    ...
    return my_var

my_func(2, optional_keyword_arg = my_value)
# in a function call, keyword arguments must follow positional arguments

# example of exending a function's parameters while remaining
# backwards compatible with existing callers:
def log(message, when=None):
    """ Log a message with a timestamp.
    Args:
        message: Message to print.
        when: datetime when message occured. Defaults to the present time.
    """
    when = datetime.now() if when is None else when  # LOOK HERE
    print('%s: %s' % (when, message))
```

## 2.8. Closures

The scope of closures is tricky; see _Effective Python_, pp. 31-36. The general notion:

```Python
def add_to_five(num):
    def inner():  # write a nested function
        print(num+f)

    return inner  # return the nested function

fifteen = add_to_five(10)  # store function call (with argument) as a variable
fifteen()  # call variable as function
```

## 2.9. Decorators

- Brett Slatkin: _Decorators are Python syntax for allowing one function to modify another function at runtime._
- [Introduction to decorators](https://www.codementor.io/python/tutorial/introduction-to-decorators)

```Python
import functools

def logme(func):

    import logging
    logging.basicConfig(level=logging.DEBUG)

    @wraps(func) # applies decorator from functools so inner.__name__ = func.__name__, etc.

    def inner(*args, **kwargs):
        logging.debug("Called {} with {} and {}".format(func.__name__, args, kwargs)
        return func(*args, **kwargs)

    return inner

@logme
def say_hello():
    print("Hello there!")

say_hello() # syntactic sugar!!
```

## 2.10. Style

- See PEPs [20](https://www.python.org/dev/peps/pep-0020/), [290](https://www.python.org/dev/peps/pep-0290/), [291](https://www.python.org/dev/peps/pep-0291/), [345](https://www.python.org/dev/peps/pep-0345/), but most importantly [8](https://www.python.org/dev/peps/pep-0008/)
- See [Google's style guide](https://google.github.io/styleguide/pyguide.html)
- Use [pycodestyle](https://pypi.python.org/pypi/pycodestyle/1.8.0.dev0), [pylint](http://www.pylint.org) or [yapf](https://github.com/google/yapf) to automate style

### 2.10.1. Spacing

- Use 2 empty lines between functions
- Use 2 empty lines between methods
- Indent with 4 spaces (don't tab)
- Use spaces after commas: `def my_fname(arg1, arg2)`
- Use spaces around assignments and other operators: `my_str = 'value'`
- Don't use spaces around operators in function calls: `my_fname(kwarg=my_var)`
- Put two spaces between code and inline comments
- Avoid single line if, for, while, excepts

### 2.10.2. Naming

- Variable names should be informative nouns; also
- Avoid single letter names since they might conflict with pdb (debugging library)
- For globals: `MODULE_LEVEL_CONSTANT`
- Function names should be informative verb phrases
- For functions and variables, use `my_fname` (snake case) instead of `MyFname` (camel case)
- For classes and exceptions use camel case
- For methods: `\_protected_instance_attribute` or `\_\_private_instance_attribute`

### 2.10.3. Structure

- Group common operations into functions; group common functions into classes
- Put import statements at top of file with one library per line, in order:
  - standard library,
  - 3rd party modules,
  - own modules
- 79 characters or less per line
- When an expression exceeds 79 characters, indent it 4 characters past its normal indentation level on the next line

### 2.10.4. Namespace & docstrings

- Profile before optimizing; use `tracemalloc` to profile memory use and leaks
- [PEP 257](https://www.python.org/dev/peps/pep-0257/): write docstrings for every function, class, and module.
  - function docstrings should describe the purpose of the function, its arguments (incl. default values, *args, *kwargs), its return value/s, and any exceptions that callers should handle.
  - class docstrings should describe the purpose of the class, public attributes and methods, how to interact with protected attributes.
  - module docstrings should specify the module's purpose and the classes/functions available in the module.

```Python
dir()  # all names in current local scope
dir(my_object)  # list of my_object's attributes

help()
help(my_object)

print(repr(f_name.__doc__)  # access docstrings
# repr returns the printable representation of an object
# helpful for debugging, to differentiate between print(5) and print('5')

print(my_object.__dict__)  # to view internals, p. 204

# add docstring to functions, classes, methods:
def my_fcn():
  """this is a docstring"""

  """for a multiline docstring,
  put closing quotes on their own line
  """

import docstrings
help(docstrings.function_name)
```




# 3. Paradigms

## 3.1. Object-oriented Python

Classes are collections of methods and attributes. An object is an instantiation of a class; everything in Python in an object.

- [Explanation from Python 3.5 docs](https://docs.python.org/3.5/tutorial/classes.html)
- [Anand Chitipothu's explanation](http://anandology.com/python-practice-book/object_oriented_programming.html)

```Python

class ClassName(ParentName1, ParentName2, arg1, ...):  # define a class, its inheritance & arguments

    def mname(self):  # create method in a class
        vname = my_value  # create attributes in a class
        return self.vname

    def method_override:  # when method name duplicates a parent's method's name
        ...

    def __init__ (self, arg1 = default_val):  # control what happens on instantiation
        ...

    def __str__(self):  # control results of print(my_object)
        return({},{}.format(self.__class__.__name__, self.vname))

from scriptname import ClassName  # use a class
my_var = ClassName.vname  # access attributes in the class
inst_name = ClassName(arg)  # create an instance of a class
inst_name = filename.ClassName()
inst_name.vname = my_value  # define attributes of an instance
```

### 3.1.1. Methods

- Methods are functions inherited from an object's class
- Find methods for datatype: `help(type_name)`
- Methods can be chained: `my_str.lower().strip()`
- CAUTION: some methods change the object they’re called on

## 3.2. Functional Python

Core concepts of the functional approach to programming, see also [[1](https://docs.python.org/3/howto/functional.html)], [[2](http://anandology.com/python-practice-book/functional-programming.html)], [[3](https://docs.python.org/3/library/functional.html)]:

- __Computation is the evaluation of functions__; code should be mostly functions
- __Programming is done with expressions__: pass the output of a function to another
  - either by chaining (possible if each function returns an iterable)
  - or by using intermediary variables
- __No side-effects from computation__: a function shouldn’t change values that are outside its proper scope (e.g. defining a variable in a function that reaches outside the function: def my_function(): global var_name, nonlocal var_name)
  - be especially careful about mutable objects like lists & dicts
- __Functions are first-class citizens__, since they can be both inputs to and outputs from other functions
    - `def my_func(other_func): ... `
- __Functions should be limited in scope and functionality__
  - e.g., not too many arguments
  - e.g., prefer short functions that do one thing

### 3.2.1. Lambdas

Anonymous functions that we won’t need to use again; one line long; can’t contain assignments; automatically return the last value calculated.

```Python
filter(lambda book: book.pages >= 600, BOOKS)
reduce(lambda x, y: x if len(x) > len(y) else y, [s for s in strings])
```

### 3.2.2. Currying

Currying is the technique of translating the evaluation of a function that takes multiple arguments (or a tuple of arguments) into evaluating a sequence of functions, each with a single argument.

### 3.2.3. Map-reduce, filter, etc.

```Python
# map: transform every element of an iterable
# similar to list comprehension: [my_func(i) for i in my_iterable]
# prefer map to list comprehension when need to nest functions
list(map(my_func, my_iterable))

# reduce: good algorithm for summing numbers, multiplying numbers
from functools import reduce
def product(x,y): return x*y → print(reduce(product([1,2,3,4,5])))

# sorting: operator module is helpful
# access attributes of an object: attrgetter
# access items in a dict: itemgetter
sorted(my_data, key=itemgetter(‘dict_key_name’), reverse=True)
# key here is a **kwarg
# see also: reversed()

# filtering:

# filter function tests every item in iterable, and keeps the truthy ones
# equivalent to: [item for item in iterable if func(item)]
def is_long_book(book):
    return book.pages >= 600
filter(is_long_book, books_data)

#  builds iterator from True elements of my_iterable or my_function(my_iterable)
filter([my_function,] my_iterable)

# builds iterator from my_iterable's False elements
import itertools
itertools.filterfalse(my_iterable)

# partial:
from functools import partial
def markdown(book, discount):
    ...
std_discount = partial(markdown, discount=.2)
print(std_discount(my_data))
```


## 3.3. Test-Driven Development

- TDD = write tests for code before writing code itself
- Doc tests are based on string comparison, so may have issues w/ floats; very code-specfic, not portable
- [coverage](http://coverage.readthedocs.io/en/latest/)
- [unittest](https://docs.python.org/3/library/unittest.html)

```Python
# write doc test
def my_function():
  """Explanation of function
  do this code
  expected_result
  """

# run doc tests
python -m doctest filename.py

# testing the extent of testing
pip install coverage
coverage run tests.py
coverage report -m  # in terminal
coverage html  # in browser

# unit tests
python -m unittest tests.py
if __name__ == ‘__main__’:
  unittest.main()

import unittest
class my_unittest(unittest.TestCase):
  def test_addition(self):
    assert 4 + 5 == 9

# quantitative assertions:
self.assertEqual(x, y)
self.assertNotEqual(x, y)
self.assertGreater(x, y)  # x > y
self.assertLess(x, y)
self.assertGreaterEqual(x, y)
self.assertLessEqual(x,y)

# logical assertions:
self.assertTrue()
self.assertFalse(my_function(test_value))

# membership assertions:
self.assertIn(x, y)  # x in y?
self.assertNotIn(x,y)
self.assertIsInstance(x, y)

# exception assertions:
with assertRaise(x): // code to test
```

### 3.3.1. Logging, errors, & debugging

```Python
import logging
logging.basicConfig(filename=’fname.log’, level=logging.DEBUG)
log levels: critical, error, warning, info, debug, notset
logging.info(‘string to log’)
# https://docs.python.org/3/howto/logging.html

import pdb
pdb.set_trace() # launches a psuedo-shell
`help`
# type ‘n’ to run the next line of code
# type ‘c’ to run as normal
`exit()`
```

#### 3.3.1.1. Raising an error

Joseph Hellerstein's code:

```Python
import pandas as pd
def func(df):
    """"
    :param pd.DataFrame df: should have a column named "hours"
    """
    if not "hours" in df.columns:
        raise ValueError("DataFrame should have a column named 'hours'.")
```



# 4. Sources

## 4.1. References

- [Official Python 3.5.2 documentation](https://docs.python.org/3/index.html)
- [Python cookbook](http://code.activestate.com/recipes/langs/python/)
- [Python package index (PyPI)](https://pypi.python.org/pypi)
- [Handy Python libraries for data cleaning](https://blog.modeanalytics.com/python-data-cleaning-libraries/)
- [PEP 8 - Style guide](https://www.python.org/dev/peps/pep-0008/)
- [Guido Rossum's Python history blog](http://python-history.blogspot.com/)


## 4.2. Read

- [Coursera - Introduction to Python](https://www.coursera.org/learn/python/home/welcome)
- [Coursera - Python data structures](https://www.coursera.org/learn/python-data)
- [Treehouse - Python basics](https://teamtreehouse.com/library/python-basics)
- [Treehouse - Python collections](https://teamtreehouse.com/library/python-collections)
- [Treehouse - Object-oriented Python](https://teamtreehouse.com/library/objectoriented-python)
- [Treehouse - Write better Python](https://teamtreehouse.com/library/write-better-python)
- [Treehouse - Datetimes in Python](https://teamtreehouse.com/library/dates-and-times-in-python)
- [Treehouse - Python testing](https://teamtreehouse.com/library/python-testing)
- [Treehouse - Functional Python](https://teamtreehouse.com/library/functional-python)
- [Treehouse - Python decorators](https://teamtreehouse.com/library/python-decorators)
- [Treehouse - Python comprehensions](https://teamtreehouse.com/library/python-comprehensions-2)
- [Treehouse - Data science basics](https://teamtreehouse.com/library/data-science-basics)
- [Treehouse - Python file I/O](https://teamtreehouse.com/library/python-file-io)
- [Treehouse - CSV & JSON in Python](https://teamtreehouse.com/library/csv-and-json-in-python)
- [DataCamp - Introduction to Python for data science](https://www.datacamp.com/courses/intro-to-python-for-data-science)
- [Iterables vs. iterators vs. generators](http://nvie.com/posts/iterators-vs-generators/)


## 4.3. Unread

- [Generator comprehensions](http://nedbatchelder.com/blog/201605/generator_comprehensions.html)
- [DataCamp - Intermediate Python for data science](https://www.datacamp.com/courses/intermediate-python-for-data-science)
- [DataCamp - 18 most common questions about Python lists](https://www.datacamp.com/community/tutorials/18-most-common-python-list-questions-learn-python#gs.rD3n5og)
- [The Hitchhiker's Guide to Python](https://www.datacamp.com/courses/intermediate-python-for-data-science)
- [Google's Python class, with exercises](https://developers.google.com/edu/python/)
- [Full stack Python tutorial](https://www.fullstackpython.com/introduction.html)
- [Lynda - Introduction to data analysis using Numpy](https://www.lynda.com/Numpy-tutorials/Introduction-Data-Analysis-Python/419162-2.html)
- [Udacity - Object-oriented programming with Python](https://www.udacity.com/course/programming-foundations-with-python--ud036)
- [Computational statistics in Python](http://people.duke.edu/~ccc14/sta-663/index.html)
- [Python's magic methods](http://farmdev.com/src/secrets/magicmethod/)
- [Applying operations over pandas dataframes](http://chrisalbon.com/python/pandas_apply_operations_to_dataframes.html)
- _High Performance Python_
- _Python for Data Analysis: Data Wrangling with Pandas, NumPy, and IPython_
- _Doing Math With Python_
- [_IPython Interactive Computing and Visualization Cookbook_](https://www.packtpub.com/big-data-and-business-intelligence/ipython-interactive-computing-and-visualization-cookbook)
- _Data Wrangling with Python_
- [Crazy! visualizes how Python executes your code](http://www.pythontutor.com/visualize.html#mode=edit)
- [donnemartin's IPython notebooks repository](https://github.com/donnemartin/data-science-ipython-notebooks)
- [nborwankar's IPython notebooks repository](https://github.com/nborwankar/LearnDataScience/tree/master/notebooks)
- [PythonChallenge.com](http://www.pythonchallenge.com/)
- [Python quiz](http://www.afterhoursprogramming.com/tutorial/Python/Python-Quiz/)
- [Intermediate Python challenges](http://wiki.openhatch.org/Intermediate_Python_Workshop/Projects)
