<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/Python.html">https://jtkovacs.github.io/REFS/HTML/Python.html</a></p><table class="TOC"><tr><td>- [Environment](#environment)
	- [Writing & running Python](#writing-&-running-python)
	- [Managing modules](#managing-modules)
	- [Which modules?](#which-modules?)
- [Language](#language)
	- [Operators](#operators)
	- [Control flow statements](#control-flow-statements)
	- [Comprehensions](#comprehensions)
	- [Generator expressions](#generator-expressions)
	- [Datatypes](#datatypes)
		- [Booleans](#booleans)
		- [Numerics](#numerics)
		- [Sequences](#sequences)
			- [Strings, bytes, & unicode](#strings,-bytes,-&-unicode)
			- [Lists](#lists)
			- [Queues](#queues)
			- [Tuples](#tuples)
		- [Sets](#sets)
		- [Dictionaries](#dictionaries)
		- [Datetimes](#datetimes)
- [Sources](#sources)
</td></tr></table>
# Environment

## Writing & running Python

```Bash
python --version 
python  # launches some version of python 2
python3  # launches some version of python 3
quit()

python fname.py  # run a script

# this code will run only if the script is executed from the command line
# it won't run if the script is imported by another script
if __name__ == '__main__': 
    # do something

pip3 install jupyter  # install Jupyer Notebook
# http://jupyter.readthedocs.io/en/latest/install.html

jupyter notebook  # launches JN in wew browser
# quit JN by typing ctrl+c twice in the command line
# share JN by uploading it to GitHub, 
# then pasting its URL into http://nbviewer.jupyter.org/
```

## Managing modules

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

## Which modules?

See also: Doug Hellmann's [Python Module of the Week](https://pymotw.com/2/contents.html), SciPy's [directory of science-related Python resources and modules](https://www.scipy.org/topical-software.html), Fredrik Lundh's [tour of the Python standard library modules](http://effbot.org/media/downloads/librarybook-core-modules.pdf) [pdf], and the [Python Module Index](https://docs.python.org/3/py-modindex.html).

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




# Language


## Operators

```Python
# COMPARISON operators
a == b  # checking equality/equivalency; returns True
a != b  # checking nonequality; returns False
a is b  # checking identicality; returns False
a is not b  # checking nonidenticality; returns True
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



## Control flow statements

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



## Comprehensions

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



## Generator expressions

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



## Datatypes

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

### Booleans

- In addition to Boolean operands `True` and `False`, all Python objects have truth values 
- `None`, `0` for any numeric type, and empty collections evaluate as `False`

### Numerics

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

### Sequences

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

#### Strings, bytes, & unicode

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

#### Lists

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

#### Queues

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

#### Tuples

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

### Sets

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

### Dictionaries

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

### Datetimes

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

# Sources
