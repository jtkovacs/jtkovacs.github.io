## USE & ANALYZE > Programming > R basics

<hr/>

- [Environment](#environment)
- [Conventions](#conventions)
- [Get more information](#get-more-information)
- __Datatypes__:
  - [Vectors](#vectors)
  - [Lists](#lists)
  - [Factors](#factors)
  - [Matrices](#matrices)
  - [Dataframes](#dataframes)
  - [Datetimes](#datetimes)
- [Control flow](#control-flow)
- [Functions & FP](#functions--fp)

<hr/>

### Environment

R packages are bundles of code, data, documentation and tests. R adds these packages to the search list by default: `grDevices, methods, stats, utils, graphics, datasets, base`; see [standary library package documentation](https://stat.ethz.ch/R-manual/R-devel/doc/html/packages.html).

```R
list.files()  # list files w/ wd
source("script_name.R")  # run a script

install.packages("package name")  # quotes not needed
library("package_name")  # loads package into current workspace (adds package to search list)
require("package_name")  # loads packages, but with warning messages and protections
# working w/ packages: http://faculty.washington.edu/kenrice/rintro/sess08.pdf
```

### Conventions

- R is case sensitive with 1-based indexing
- <http://stackoverflow.com/questions/11563154/what-are-replacement-functions-in-r)>
- <https://jeffknupp.com/blog/2012/11/13/is-python-callbyvalue-or-callbyreference-neither/>

```R
# operators: +, -, *, /, ^, %%, %*%
# logic: !, &, | (inclusive OR)
# when evaluating vectors, && and || evaluate only the first element
# relational: >, >=, !=,==
```

### Get more information

```R
getwd()  # identify working directory
ls()  # list all variables in the workspace
search()  # lists packages that R is using in this session

help(function_name)  # look at documentation
?function_name  # look at documentation
example(function_name)
args(function_name)

class(my_variable)  # check type
typeof(my_variable)
is.numeric(my_variable)
summary(my_data)  # 5 number summary from stats
ls(my_data)
```

### Datatypes

#### Vectors

Vectors can hold a 1D array of numeric, character, raw, or logical data. The elements in a vector all have the same data type (AKA it's an atomic vector). Standard operations work row-wise.

```R
my_vec <- c(x1,x2,..., xn)  # create vector with combine function
my_vec <- vector(mode = "type", length = 5)  # create empty vector
names(my_vec) <- c("name1", "name2", ...)  # assign names to vector values

my_vector[i]
my_vector[c(h,i,j,k)]
my_vector[h:k]
my_vector[c(“name3”,"name5")]
my_vector[my_vector>2]

# NULL: the absence of a vector
# NA: the absence of values inside a vector
is.na(my_vec) --> returns logical vector
```
#### Lists

A list is the 1D version of a data frame; it can contain different data types (AKA it's a recursive vector: a vector that can contain other vectors.

```R
my_list <- list(component1, ...)
my_list <- list("name1" = component1, ...)  # or list(name1 = ...); quotes not necessary
names(my_list) <-  c("name1", ...)

my_list[[1]]  # subsetting by index
my_list[[3]][5]
my_list[[“nm1”]]  # subsetting by name
my_list$var_name
my_list$varname[3]

# chained selection, returns 2:
x <- list(a = 1, b = list(r = 2, s = 3))
x[[c("b", "r")]]

new_list <- c(my_list, name=component)  # add new element to list
extended_list <- c(my_list, list(item))  # add new list to list-of-lists
list addressing: [ extracts a sublist, [[ or $ extract a value
```

#### Factors

Factor: _a statistical data type used to store categorical variables_; may be nominal or ordinal. 

```R
my_fac <- factor(my_vec)  # create nominal factor
my_fac <- factor(my_vec, ordered=TRUE, levels=c("low", ..., "hi")  # create ordinal factor
# addressing same as for vectors

levels(my_vec)  # view factor levels
levels(my_vec) <- c("name", ..., "name")  # (re)name factor levels
```

#### Matrices

Matrices store mXn data of a _single datatype_: numeric, character, raw, logical. Standard operators work element-wise; special matrix operators work row-wise.

```R
my_mat = matrix(1:9, byrow=TRUE, nrow=3)
my_mat = matrix(c(my_vec1, my_vec2), byrow=FALSE, nrow=2)

# ADD NAMES 
my_mat = matrix(..., dimnames=list(rname, cname))
rownames(my_mat) <- rname_vec
colnames(my_mat) <- cname_vec

# ADD A COLUMN OR ROW
my_mat = cbind(my_vec1,my_vec2)
my_mat = rbind(my_mat1,my_vec2)

# matrix addressing:
my_matrix[i,j]
my_matrix[1:2,5:7]
my_matrix[ ,4]
my_matrix[1:4, ]
```

#### Dataframes

Dataframes are for mxn data where datatypes vary across (not within) columns.

```R
my_df <- data.frame(vec1, vec2, ..., vecn)

str(my_df)  # view structure of dataset
head(my_df)
tail(my_df, num_rows)

# data frame addressing: numeric, same as for matrix
my_df[1:3, “var_name”]
my_df$var_name equivalent to my_df[,"varname"]
my_df[my_boolean_vec, ]

subset(my_df, subset = some_condition)
```

#### Datetimes

- lubridate, zoo, xts are relevant libraries

```R
today <- Sys.Date()
my_date <- as.Date("%Y-%m-%d")  # yyyy-mm-dd
my_date <- as.Date("2012-19-01", format = "%Y-%d-%m")
format(my_date, "format_code")  # get formatted strings from Date objects
# http://www.rdocumentation.org/packages/base/versions/3.3.1/topics/strptime
# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)
# %H: hours as a decimal number (00-23)
# %M: minutes as a decimal number
# %S: seconds as a decimal number
# %T: shorthand notation for the typical format %H:%M:%S

now <- Sys.time()
my_time <- as.POSIXct("%Y-%m-%d %H:%M:%s")
# #days since 01/01/1970, #seconds since the first second of this day
# a common offset for programming languages; expedites calculations
```

### Control flow

A `for` loop has three parts: the sequence, the body, and the output object. _Before you start the loop, you must always allocate sufficient space for the output ... This is very important for efficiency: if you grow the for loop at each iteration (e.g. using c()), your for loop will be very slow._

```R
if (condition1) {
..    expr1
.. } else if (condition2) {
..    next  # jump to next iteration of loop
.. } else { 
..    break  # exit the loop immediately and completely
.. }

while (condition) { 
..    expr 
.. }

# loop by element
for (v in list_or_vector) { 
..    expr
.. }

# loop by index
# prefer to 1:length(my_object); handles empty objects better
for (in in seq_along(list_or_vector) {
..    expr
.. }
```

### Functions & FP

```R
my_fun <- function(arg1, arg2 = default_value, ...) {
..    expr  # last-evaluated expr returned by default; and also specify return(expr)
.. }
# SCOPING:
# each function call creates a local environment for that function
# calling the same function multiple times --> multiple new environments
# functions should never depend on variables that are not arguments, i.e. global variables
# variables defined inside a function are not available globally unless they are returned

function(arg1, arg2 = default_value, ...) { expr }  # anonymous function

# MARGIN=1 means apply row-wise; MARGIN=2, column-wise; MARGIN=c(1,2) means both
apply(my_array, MARGIN=1, fcn)
lapply(my_iterable, fcn_to_apply, arg1="argument", ...)  # returns a list
lapply(my_mats_list,"[", i,j)  # select ith row, jth col of each matrix in list of matrices
lapply(my_list_of_lists, '[[', "name")
unlist(lapply(...))  # returns a vector
sapply (my_iterable, fcn, arg1="argument", ...)  # returns simplest possible datatype, e.g. vector
vapply(my_iterable, fcn, FUN.VALUE = template_for_return_value, ..., use.names = TRUE)
# safer than sapply because you can specify what the return value should look like;
# it will otherwise raise an error:
# numeric(3)  # a vector of numerics, length==3
# logical(1)  # a single logical
# character(), integer()

# if length(my_vec)==2, returns vec with 'a' copies of my_vec[1], 'b' copies of my_vec[2]
rep(my_vec, c(a,b, ...))  

aggregate()
sweeps()
```
