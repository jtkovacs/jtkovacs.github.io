## USE & ANALYZE > Programming > Object-oriented & functional Python

<hr/>

- [Object-oriented Python](#object-oriented-python)
- [Functions](#functions)
  - [Closures](#closures)
  - [Decorators](#decorators)
- [Methods](#methods)
- [Functional Python](#functional-python)
  - [Lambdas](#lambdas)
  - [Currying](#currying)
  - [Map-reduce, filter, etc.](#map-reduce-filter-etc)
  
<hr/>

### Object-oriented Python

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

### Functions

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

#### Closures

The scope of closures is tricky; see _Effective Python_, pp. 31-36. The general notion:

```Python
def add_to_five(num): 
    def inner():  # write a nested function
        print(num+f) 
        
    return inner  # return the nested function
    
fifteen = add_to_five(10)  # store function call (with argument) as a variable
fifteen()  # call variable as function
```

#### Decorators

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

### Methods

- Methods are functions inherited from an object's class
- Find methods for datatype: `help(type_name)`
- Methods can be chained: `my_str.lower().strip()`
- CAUTION: some methods change the object they’re called on 

### Functional Python

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
  
#### Lambdas

Anonymous functions that we won’t need to use again; one line long; can’t contain assignments; automatically return the last value calculated.

```Python
filter(lambda book: book.pages >= 600, BOOKS)
reduce(lambda x, y: x if len(x) > len(y) else y, [s for s in strings])
```

#### Currying

currying is the technique of translating the evaluation of a function that takes multiple arguments (or a tuple of arguments) into evaluating a sequence of functions, each with a single argument. 

#### Map-reduce, filter, etc.

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
