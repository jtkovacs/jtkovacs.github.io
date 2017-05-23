<p class="path"><a href="../pkb.html">pkb contents</a> \> r | just under 1253 words | updated 05/21/2017</p><div class="TOC">- &nbsp;1. [Environment](#environment)
- &nbsp;2. [Conventions](#conventions)
- &nbsp;3. [Get more information](#get-more-information)
- &nbsp;4. [Datatypes](#datatypes)
	- &nbsp;4.1. [Vectors](#vectors)
	- &nbsp;4.2. [Lists](#lists)
	- &nbsp;4.3. [Factors](#factors)
	- &nbsp;4.4. [Matrices](#matrices)
	- &nbsp;4.5. [Dataframes](#dataframes)
	- &nbsp;4.6. [Datetimes](#datetimes)
- &nbsp;5. [Control flow](#control-flow)
- &nbsp;6. [Functions & FP](#functions-fp)
- &nbsp;7. [Sources](#sources)
	- &nbsp;7.1. [References](#references)
	- &nbsp;7.2. [Read](#read)
	- &nbsp;7.3. [Unread](#unread)
</div>
# 1. Environment

R packages are bundles of code, data, documentation and tests. R adds these packages to the search list by default: `grDevices, methods, stats, utils, graphics, datasets, base`; see [standary library package documentation](https://stat.ethz.ch/R-manual/R-devel/doc/html/packages.html).

```R
list.files()  # list files w/ wd
source("script_name.R")  # run a script

install.packages("package name")  # quotes not needed
library("package_name")  # loads package into current workspace (adds package to search list)
require("package_name")  # loads packages, but with warning messages and protections
# working w/ packages: http://faculty.washington.edu/kenrice/rintro/sess08.pdf
```

# 2. Conventions

- R is case sensitive with 1-based indexing
- <http://stackoverflow.com/questions/11563154/what-are-replacement-functions-in-r)>
- <https://jeffknupp.com/blog/2012/11/13/is-python-callbyvalue-or-callbyreference-neither/>

```R
# operators: +, -, *, /, ^, %%, %*%
# logic: !, &, | (inclusive OR)
# when evaluating vectors, && and || evaluate only the first element
# relational: >, >=, !=,==
```

# 3. Get more information

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

# 4. Datatypes

## 4.1. Vectors

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
## 4.2. Lists

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

## 4.3. Factors

Factor: _a statistical data type used to store categorical variables_; may be nominal or ordinal. 

```R
my_fac <- factor(my_vec)  # create nominal factor
my_fac <- factor(my_vec, ordered=TRUE, levels=c("low", ..., "hi")  # create ordinal factor
# addressing same as for vectors

levels(my_vec)  # view factor levels
levels(my_vec) <- c("name", ..., "name")  # (re)name factor levels
```

## 4.4. Matrices

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

## 4.5. Dataframes

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

## 4.6. Datetimes

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

# 5. Control flow

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

# 6. Functions & FP

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


# 7. Sources

## 7.1. References

- [Official R documentation](https://www.r-project.org/)
- [R cookbook](http://www.cookbook-r.com/)
- [R documentation search engine](https://www.rdocumentation.org/)
- [R packages for data access](http://blog.revolutionanalytics.com/2016/08/r-packages-data-access.html)
- [Software Carpentry's R cheatsheet](http://swcarpentry.github.io/r-novice-inflammation/reference/)
- [RStudio's R cheatsheets](https://www.rstudio.com/resources/cheatsheets/#515)
- [Hadley Wickham's R style guide](http://adv-r.had.co.nz/Style.html)
- [Google's R style guide](https://google.github.io/styleguide/Rguide.xml)
- [R code style guide](https://4dpiecharts.com/r-code-style-guide/)
- [An R introduction to statistics (many tutorials)](http://www.r-tutor.com/)

## 7.2. Read

- [DataCamp - Data analysis & statistical inference in R](https://www.datacamp.com/community/open-courses/statistical-inference-and-data-analysis)
- [DataCamp - Introduction to statistics](https://www.datacamp.com/introduction-to-statistics)
- [DataCamp - Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r)
- [DataCamp - Intermediate R](https://www.datacamp.com/courses/intermediate-r)
- [DataCamp - Intermediate R practice](https://campus.datacamp.com/courses/intermediate-r-practice)

## 7.3. Unread

- [One page R](http://togaware.com/onepager/)
- [DataCamp - Writing functions in R](https://campus.datacamp.com/courses/writing-functions-in-r)
- [DataCamp - Importing data](https://www.datacamp.com/courses/importing-data-in-r-part-1)
- [DataCamp - Cleaning data](https://www.datacamp.com/courses/cleaning-data-in-r)
- [DataCamp - Data manipulation](https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial)
- [DataCamp - Table data manipulation](https://www.datacamp.com/courses/data-table-data-manipulation-r-tutorial)
- [DataCamp - R, Yelp, and the search for good Indian food](https://www.datacamp.com/community/open-courses/r-yelp-and-the-search-for-good-indian-food)
- [DataCamp - The Apply family of functions](https://www.datacamp.com/community/tutorials/r-tutorial-apply-family#gs.mGQX8hE)
- [DataCamp - Big Data analysis with R Revolution](https://www.datacamp.com/community/open-courses/big-data-revolution-r-enterprise-tutorial)
- [Jared Knowles' R bootcamp](http://jaredknowles.com/r-bootcamp/)
- [Elementary statistics with R](http://www.r-tutor.com/elementary-statistics)
- [Scalable data science with R: Scaling up, scaling out, or using R as an abstraction layer](https://www.oreilly.com/ideas/scalable-data-science-with-r)
- [R Style. An Rchaeological Commentary.](https://cran.r-project.org/web/packages/rockchalk/vignettes/Rstyle.pdf)