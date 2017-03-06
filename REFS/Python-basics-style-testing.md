## USE & ANALYZE > Programming > Python style & testing

<hr/>

- [Conventions](#conventions)
- [Spacing](#spacing)
- [Naming](#naming)
- [Structure](#structure)
- [Namespace & docstrings](#namespace--docstrings)
- [Logging, errors, & debugging](#logging-errors--debugging)
- [Test-driven development](#test-driven-development)

<hr/>

### Conventions

- Python prioritizes readability and simplicity; `import this`
- Python is extremely picky about indentation, e.g. to define functions
- Python is case sensitive and has several [reserved words](http://pentangle.net/python/handbook/node52.html)
- Python uses [zero-based indexing](http://python-history.blogspot.com/2013/10/why-python-uses-0-based-indexing.html)
- See PEPs [20](https://www.python.org/dev/peps/pep-0020/), [290](https://www.python.org/dev/peps/pep-0290/), [291](https://www.python.org/dev/peps/pep-0291/), [345](https://www.python.org/dev/peps/pep-0345/), [8](https://www.python.org/dev/peps/pep-0008/) 
- Use [pycodestyle](https://pypi.python.org/pypi/pycodestyle/1.8.0.dev0) or [yapf](https://github.com/google/yapf) to automate style

### Spacing

- Use 2 empty lines between functions
- Use 2 empty lines between methods
- Indent with 4 spaces (don't tab)
- Use spaces after commas: `def my_fname(arg1, arg2)`
- Use spaces around assignments and other operators: `my_str = 'value'`
- Don't use spaces around operators in function calls: `my_fname(kwarg=my_var)`
- Put two spaces between code and inline comments
- Avoid single line if, for, while, excepts

### Naming

- Variable names should be informative nouns; also 
- Avoid single letter names since they might conflict with pdb (debugging library)
- For globals: `MODULE_LEVEL_CONSTANT`
- Function names should be informative verb phrases
- For functions and variables, use `my_fname` (snake case) instead of `MyFname` (camel case)
- For classes and exceptions use camel case
- For methods: `\_protected_instance_attribute` or `\_\_private_instance_attribute`

### Structure

- Group common operations into functions; group common functions into classes
- Put import statements at top of file with one library per line, in order: 
  - standard library, 
  - 3rd party modules, 
  - own modules
- 79 characters or less per line
- When an expression exceeds 79 characters, indent it 4 characters past its normal indentation level on the next line

### Namespace & docstrings

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

### Logging, errors, & debugging

[Types of errors](https://docs.python.org/3/tutorial/errors.html): can be syntatic (problems with 'grammar' of Python), logical (problems with structure of program), or semantic (works computationally but does the wrong thing or has unintended behavior).

```Python
import logging
logging.basicConfig(filename=’fname.log’, level=logging.DEBUG)
log levels: critical, error, warning, info, debug, notset
logging.info(‘string to log’)
# https://docs.python.org/3/howto/logging.html

import pdb
pdb.set_trace() # launches a psuedo-shell
# type ‘n’ to run the next line of code
# type ‘c’ to run as normal
```

### Test-driven development

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
