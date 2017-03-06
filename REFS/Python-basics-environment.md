## USE & ANALYZE > Programming > Python environment

<hr/>

- [Writing & running Python](#writing--running-python)
- [Managing modules](#managing-modules)
- [Which modules?](#which-modules)

<hr/>

### Writing & running Python

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

### Managing modules

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

### Which modules?

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
