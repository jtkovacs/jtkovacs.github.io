
```R
>> c(4,5,6) > 5  # returns vector of Booleans
>> my_selection <- my_vec > 5  # create new vector based on selection
>> my_subset <- my_vec[my_selection]
```

```R
# <, > can be used with strings, e.g. "Hello" > "Goodbye"; it compares based on alphabetical order, where A is smallest
# <, > can be used with Booleans, since TRUE == 1 and FALSE == 0 
# one trick: evaluate a vector to yield a Boolean vector, and then sum the Boolean vector: gives #TRUE
```
- [Big Data U - Using R with Databases](http://bigdatauniversity.com/courses/using-r-with-databases/)

>> print("Your text here")

>> print(paste("", my_var, ""))


http://nbviewer.jupyter.org/urls/gist.githubusercontent.com/TomAugspurger/6e052140eaa5fdb6e8c0/raw/811585624e843f3f80b9b6fe89e18119d7d2d73c/dplyr_pandas.ipynb

http://www.alfredo.motta.name/data-manipulation-primitives-in-r-and-python/

http://www.rdocumentation.org/packages/utils/versions/3.3.1/topics/read.table?

library for web scraping: https://github.com/hadley/rvest

>> seq(a,b,length.out=n)

seq(from = 1, to = 10, by = 1): Generate sequences, by specifying the from, to andby arguments.
rep(): Replicate elements of vectors and lists.
sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
rev(): Reverse the elements in a data structures for which reversal is defined.
str(): Display the structure of any R object.
append(): Merge vectors or lists.
is.*(): Check for the class of an R object.
as.*(): Convert an R object from one class to another.
unlist(): Flatten (possibly embedded) lists to produce a vector.

load & clean data:
read.table(“url”)
load custom function: load(url(“”))
na.omit(my_data)
library: https://github.com/smbache/magrittr 

investigate structure of data frame object:
dim(my_df)
names(my_df)
head(my_df)
tail(my_df)
typeof(my_df$my_var)
levels(categorical_var)

>> sort(my_df)
>> order(my_df$my_var, decreasing=TRUE)
>> my_df[order(my_df),]

>> identical(thing1, thing2)

>> diff(my_vec)  # vector of differences between elements in a numerics vector
>> unique(my_vec)
order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example
we can use the output of order(a) to reshuffle a: a[order(a)]

retrieve data from data frame:
my_df$var_name
row-and-column style: my_df[row#,col#], my_df[row#:range, col#:range], my_df[row#,]
names style: my_df$var_name, mf_df$var_name[row#:range]
conditional subsetting: subset[my_df, condition]
==, >, >=, !=, |, &
