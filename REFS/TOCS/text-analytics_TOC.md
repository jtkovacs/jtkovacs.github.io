<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/text-analytics.html">https://jtkovacs.github.io/REFS/HTML/text-analytics.html</a></p><table class="TOC"><tr><td>- [Text analytics in Python](#text-analytics-in-python)
	- [Manage punctuation, case, & whitespace](#manage-punctuation,-case,-&-whitespace)
	- [Search & regex](#search-&-regex)
- [groups addressing](#groups-addressing)
</td></tr></table>

# Text analytics in Python


```Python
reserve order of elements: list.reverse(), my_string[::-1] 
selectively replace: str_name.replace(‘this’,’with this’) 
find index of known element: list.index(‘str name’) 
#times element occurs: list.count(‘em_name’) makes tuple with (index,value): enumerate(my_list) 
```

## Manage punctuation, case, & whitespace

```Python
# remove punctuation
import string
line.translate(None, string.punctuation)

# modify case
my_string.lower()
my_string.upper()
my_string.capitalize()
my_string.title()

# remove whitespace by default, or remove specified characters
my_string.strip('chars')
my_string.lstrip()
my_string.rstrip()
```

## Search & regex

```Python
# search for substrings within string or subset of string (i inclusive to j exclusive)
str_index = my_string.find(x,i,j)
str_index = my_string.index(x,i,j)  # raises ValueError if not found
str.endswith(x,i,j)
str.startswith(x,i,j)
my_string.count(x,i,j)
```
https://docs.python.org/3/library/re.html
https://docs.python.org/3/howto/regex.html

http://nbviewer.jupyter.org/github/ptwobrussell/Mining-the-Social-Web-2nd-Edition/tree/master/ipynb/

```Python
# match the beginning of a string:
re.match(pattern, text, flags)
re.match(r’Jac’, data) # the r denotes a raw string

# search anywhere in a string:
# first match only: 
re.search(pattern, text, flags)
# all nonoverlapping: 
re.findall(pattern, text, flags)
# pass count parameter into findall:
# return re.findall(r’\w{%d,} %my_int, my_str’)

# phone number, note escaped parentheses:
re.search(r’\(\d\d\d\) \d\d\d-\d\d\d\d’, data)
# make parentheses, space, hyphen optional in phone number
r’\)?\d{3})?\s?-?\d\{3}-\d{4}’

```

flags:

- re.IGNORECASE or re.I will ignore word case
- re.VERBOSE or re.X let regexp span lines & contain (ignored) whitespace or comments
- re.MULTILINE or re.M to make a pattern regard lines in your text as the beginning or end of a string
- multiple flags: re.findall(pattern, data, flag|flag|flag)

```Python
# store regex for reuse: 
my_regex = re.compile(pattern, flags)
re.search(my_regex, data)
# OR 
my_regex.search(data)

# loop to obtain iterable of match objects:
for match in my_regex.finditer(data):
    print(‘{first} {last} <{email}>’.format(**match.groupdict())) 
```
    
- \w = any Unicode word character,  \W = anything not a Unicode word character
- \s = any whitespace, \S = anything not whitespace, \t = tab
- \d = any number 0-9, \D = any non-number
- \b = word boundaries, \B = not word boundaries

counts, for when something occurs multiple times:

- {3} = occurs 3 times, {,3} = 0-3 times, {3,} = 3 or more times, {3-5} = 3-5 times
- \w? = 0-1 word characters, \w* = 0-infinite word characters, \w+ = 1-infinite word characters


sets let us combine explicit characters and escape patterns into pieces that can be repeated multiple time; they also let us specify pieces that should be left out of any matches:
[aple] finds apple and pale, [a-z] finds any lowercase letter, [A-Z] finds uppercase, [a-zA-Z] finds any case, [^2] finds anything not two, [0-9] finds any number, [\w.]+ finds any # of \w, .

```Python
# groups search for multiple conditions simultaneously; note that ^ marks the beginning of the string, and $ marks the end; unnamed groups returned as tuples, named groups as dicts:
my_var = re.findall (r’’’
    ^(?P<name>[-\w ]+,\s[-\w ]+)\t   # search for lastname, firstname
    (\)?\d{3})?\s?-?\d\{3}-\d{4})? # search for phone number, optional
    (?<email>[-\w\d.+]+ @[-\w\d.]+)\t$  # search for emails
    ‘’’, data, flags)
```

# groups addressing
my_var.groups()
my_var.group_dict() 
my_var.group(‘group_name’)
my_var.group(1)
```



# Sources

## References

- [NLTK cheatsheet](http://billchambers.me/tutorials/2015/01/14/python-nlp-cheatsheet-nltk-scikit-learn.html)
- [Corpus of Contemporary American English](http://corpus.byu.edu/coca/)
- [Corpus based language studies](http://cw.routledge.com/textbooks/0415286239/default.asp)
- [IBM Watson demo - Infer personality from unstructured text](https://personality-insights-livedemo.mybluemix.net/)

## Read

- [Lynda - Using Regex](http://www.lynda.com/Regular-Expressions-tutorials/Using-Regular-Expressions/85870-2.html)

## Unread

- Regex: [1](http://www.regular-expressions.info/), [2](https://regexone.com/)
- [CodeSchool - Regular Expressions](https://www.codeschool.com/courses/breaking-the-ice-with-regular-expressions)
- [4 steps to structure highly unstructured big data via automated indexation](http://www.datasciencecentral.com/profiles/blogs/5-easy-steps-to-structure-highly-unstructured-big-data)
- [Coursera - Natural Language Processing](https://www.coursera.org/learn/nlp)
- [Big Data U - Text Analytics](http://bigdatauniversity.com/courses/text-analytics-essentials/)
- [Language bias &amp; black sheep](http://nlpers.blogspot.co.uk/2016/06/language-bias-and-black-sheep.html)
- [Analyzing Text with NLTK](http://www.nltk.org/book/)
- [Donovan Rebbechi's grep tutorial](http://www.panix.com/~elflord/unix/grep.html)
- [Drew's grep tutorial](http://www.uccs.edu/~ahitchco/grep/)
