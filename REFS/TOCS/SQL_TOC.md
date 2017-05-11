<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/SQL.html">https://jtkovacs.github.io/REFS/HTML/SQL.html</a> \> 2292 words </p><table class="TOC"><tr><td>- [What is SQL?](#what-is-sql?)
	- [Notation and style guide](#notation-and-style-guide)
	- [Data definition](#data-definition)
		- [Manage databases](#manage-databases)
		- [Manage tables](#manage-tables)
		- [Manage views](#manage-views)
	- [Data manipulation](#data-manipulation)
		- [Generic query form](#generic-query-form)
		- [SELECT and display](#select-and-display)
			- [WITH conditional filtering](#with-conditional-filtering)
			- [Aggregate and GROUP BY](#aggregate-and-group-by)
		- [FROM ](#from-)
			- [JOINs](#joins)
			- [Subqueries](#subqueries)
		- [Set operations](#set-operations)
- [Check for inclusion](#check-for-inclusion)
- [T-SQL](#t-sql)
- [Cookbook and examples](#cookbook-and-examples)
- [SOURCES](#sources)
	- [References](#references)
	- [Archive](#archive)
	- [Inbox](#inbox)
</td></tr></table>
# What is SQL?

SQL is the standardized language used to access a database. SQL language provides for: (1) data definition/DDL statements that help you define the database and its objects; (2) data manipulation/DML statements that allow you to update and query data; (3) data control, allows you to grant the permissions to a user to access a certain data in the database.


## Notation and style guide

- all commands end with semicolon
- by convention, commands are CAPITALIZED
- NULL means a cell is unpopulated; NULL = NULL → F
- ORDER is very important! e.g. WHERE must precede GROUP BY; GROUP BY must precede HAVING 
- notation: table (field1, field2, … , fieldn)
- comments: -- comment, /* comment comment */
- mathematical operators: +,-,/,* 
- SELECT GPA, GPA*(size_HS/1000) AS scaleGPA FROM … 
- gives row dimension of table: SELECT count(*) FROM tname;


## Data definition

### Manage databases

### Manage tables

Datatypes: http://www.w3schools.com/sql/sql_datatypes.asp, but they will depend on DBMS

- int stores numbers from -217483648 to 217483647
- double & real allow scientific notation: 2.5e4
- decimal is good for money: DECIMAL(5,2) has 5 digits, of which 2 are after the decimal point
- varchar(max_length), char(fixed_length) , clob/text is unlimited length , boolean is TRUE/FALSE 
- date is ‘yyyy-MM-dd’, time is ‘hh:mm:ss’, datetime or timestamp is ‘yyyy-MM-dd hh:mm:ss’

```SQL
-- create table: 

CREATE TABLE t (id INT PRIMARY KEY, col1 TYPE(size), col2 TYPE constraint constraint, col3 FOREIGN KEY REFERENCES other_table(fieldname), col4 DEFAULT ‘value’, … ); 
-- constraints: NOT NULL, UNIQUE, CHECK, DEFAULT
-- autopopulate date: CREATE TABLE tname (order_date date DEFAULT getdate()); 
CREATE TABLE tname (… UNIQUE (col1, col2, …) … );
CREATE TABLE tname ( … year INT CHECK (year>1950 AND year<1980)) …)
CREATE TABLE tname (... CHECK (price/hours < 20)); 

-- composite PK: 
CREATE TABLE t (name int, date int, PRIMARY KEY(name,date));
-- foreign key:
… FOREIGN KEY(c1) REFERENCES t1(c1), FOREIGN KEY(c2) REFERENCES t2(c1));
… REFERENCES … ON DELETE [action] ON UPDATE [action]

-- CASCADE: when the referenced row is deleted or updated, the respective rows of the referencing table will be deleted or updated.
-- NO ACTION: do nothing to the the referenced row
-- SET NULL: the values of the affected rows are set to NULLs
-- SET DEFAULT: the values of the affected rows are set to their default values

-- multicolumn foreign key: 
… FOREIGN KEY(c1, c2) REFERENCES t2(c1, c2)); 

-- autoincrement PK:
… id INT IDENTITY(#start, #inc) PRIMARY KEY, ...
… id INT AUTO_INCREMENT(#start, #inc) PRIMARY KEY, …

-- create PK
CREATE SEQUENCE name START WITH # INCREMENT BY #; 
CREATE TABLE t ( … id DEFAULT nextval(‘name’) PRIMARY KEY … );

--- delete table: 
DROP TABLE tname;
DROP DATABASE dname;
TRUNCATE TABLE tname;

--- add records: when SELECT is used as an expression in these kinds of queries, it needs to return only one column; 
--- so it sometimes helps to create a new identifier, say c1*c2*c3
INSERT INTO tname VALUES (key#, ‘string_value’, NULL, ...);

--- if select returns same schema: 
INSERT INTO t  (c1, c2) SELECT c1, c2 … 

--- add fields to confom to schema: 
SELECT col, 12, NULL
INSERT INTO t (col1, colx) VALUES (val, val), (val, val), (val, val)

--- delete records: 
--- some implementations disallow condition statements with a subquery that includes the affected table
DELETE FROM tname WHERE … 

--- delete all records: 
DELETE FROM table;

--- update records:
UPDATE tname SET c1=value/subquery, c2=value/subquery WHERE …
```

### Manage views

view data is not stored physically; every time you retrieve data from the view, the database reruns the underlying query.  most databases don't allow inserting new data or updating existing data in views.

```SQL
create a view: CREATE VIEW vname AS [query];
use a view: SELECT * FROM vname;
DROP VIEW vname;
```



## Data manipulation

### Generic query form

Match the following clauses with its definition: 

- SELECT: Columns to appear in result-set
- FROM: Specifies table(s) holding desired columns
- WHERE: Allows user to filter rows returned
- GROUP BY: Clusters rows by common column value
- HAVING: Filters GROUP BY clause
- ORDER BY: Sorts the output of the results-set in a desired sequence

```SQL
SELECT c1,c2 FROM tname WHERE ... ; SELECT * FROM tname;
operators: <, >, <=, >=, !=, ==, <>, OR, AND, NOT, BETWEEN, IS, NULL, EXISTS, ANY, ALL
SELECT * FROM tname WHERE cname=numeric;
SELECT * FROM tname WHERE cname=‘string’;
SELECT c1,c2 FROM t WHERE c1>= value OR c2=value;
SELECT … FROM … WHERE (complex_condition1) AND (complex_condition2)
SELECT * FROM t WHERE c BETWEEN condition1 AND condition2;
dep. on implementation, may not include endpoints
… NOT BETWEEN …
IS NULL, IS NOT NULL
EXISTS checks whether a subquery is empty; its expressive power encompasses:
… = ALL (SELECT …), … != ALL (SELECT …)
… = ANY (SELECT …), … != ANY (SELECT …)
fuzzy match: 
multiple char: SELECT * FROM … WHERE c LIKE ‘%string%’;
single char: SELECT * FROM … WHERE c LIKE ‘_tringvalue’;
```

### SELECT and display

```SQL
-- concatenate strings: really depends on platform
SELECT CONCAT(c1,c2) FROM t
SELECT c1+c2+’ ‘+c3 ..
SELECT c1 || ‘ ‘ || c2 AS email_address FROM … 
SELECT LENGTH(col)  … 
SELECT MAX(LENGTH(col)) … 
change case: SELECT UPPER(c1), LOWER(c2) … 
SELECT SUBSTR(col,#from,#inc) … 
1-based indexing
SELECT REPLACE(col,’from_string’,’to_string’) …
date: yyyy-mm-d
time: hh:mm:ss
datetime: yyyy-mm-dd hh:mm:ss
DATE(<timestring>,<modifier>,<modifier>, …)
timestring: “now”, “yyyy-mm-dd”
modifier: “-7 days”, “+2 months”
DATE(“datetime_string”) → yyyy-mm-dd
TIME(“datetime_string”) → hh:mm:ss
STRFTIME(“format_string”, ”datetime_string”, <modifier>)
“%d/%m/%Y”
```

#### WITH conditional filtering


#### Aggregate and GROUP BY

```SQL
skip: SELECT <c> FROM <t> LIMIT <# of rows> OFFSET <skipped rows>;
SELECT <c> FROM <t> LIMIT <skipped rows>, <# of rows>; 
SELECT <c> FROM <t> OFFSET <skipped rows> ROWS FETCH NEXT <#> ROWS ONLY;
summary statistics: SELECT max/min/avg/sum/abs(cname) FROM tname; 
SELECT c FROM t T1 WHERE NOT EXISTS (SELECT * FROM t T2 WHERE T2.val>T1.val);
SELECT c FROM t WHERE c >= ALL (SELECT c FROM t); 
SELECT c FROM t WHERE NOT c <  ANY (SELECT c FROM t); 
SELECT round(col,#digits) … 
sort (default=ASC): SELECT * FROM tname ORDER BY fieldname DESC;
select distinct: SELECT DISTINCT c FROM t; SELECT c FROM t GROUP BY c;
count distinct: SELECT count(DISTINCT cname) FROM tname;
count non-NULL values: SELECT count(cname) FROM tname;
sort groups: SELECT c1, sum(c3) FROM t GROUP BY c1 ORDER BY sum(c3);
display in groups: SELECT c1, c2, count(col3) FROM t GROUP BY c1, c2; 
filtering groups: SELECT c1, count(c3) FROM t GROUP BY c1 HAVING cndn;
```

### FROM 

#### JOINs

- http://www.vertabelo.com/blog/technical-articles/sql-joins
- http://thomaslarock.com/2012/04/real-world-sql-join-examples/
- http://sqlmag.com/t-sql/t-sql-join-types

Which of the following are characteristics of a JOIN?

- Data is automatically sorted by the first column
- Tables are JOINed via PK/FK relationships
- More than two tables can be JOINed in one query
- The keyword GROUP is mandatory

```SQL
returns, for two mxn tables, a table of dim (m1*m2)x(n1+n2): SELECT * FROM t1, t2
join via select: SELECT * FROM table1,table2 WHERE table1.col = table2.col;
for joins note that, in SQL classic versus the graphic: 
the default JOIN is inner join
FULL JOIN doesn’t need “outer” clause
NATURAL JOIN doesn’t need “on” clause; good for well-built db 
aliases enable self-joins: SELECT c1 AS ... FROM t1 AS ... JOIN t2 AS … ON …
SELECT * FROM Student S1, Student S2 WHERE S1.GPA = S2.GPA AND S1.sID > S2.sID
multiple tables: SELECT * FROM t1 JOIN t1 ON … JOIN t3 ON … WHERE … 
set operators: let you query n tables and show the results as one table, provided both tables have the same #cols of the same type
removes duplicates: SELECT … FROM … UNION SELECT … FROM …; 
multiset operator: SELECT … FROM … UNION ALL SELECT … FROM ...;
SELECT … FROM … INTERSECT SELECT … FROM ...;
SELECT * FROM <self_join> WHERE <join_cndn> AND <select_cndn>
except: SELECT ... FROM ... EXCEPT SELECT … FROM...;
SELECT * FROM ... WHERE * IN (subquery) AND * NOT IN (subquery) 
```

#### Subqueries

```SQL
SUBQUERIES … the database will first check the subquery then check the final query, e.g.: SELECT name FROM city WHERE rating = (SELECT rating FROM city WHERE name = 'Paris');
subqueries can be in the WHERE clause …
in FROM clause, reducing need for calculation in SELECT and WHERE ..
and in the SELECT clause 
used as an expression, it's important the subquery return exactly one col 
compare with a set of values instead of a single value: … WHERE … IN (subquery);
correlated subqueries, i.e. dependent on the main query; subqueries can use tables from the main query, but the main query can't use tables from the subquery. 
good for debugging, e.g. SELECT * FROM country WHERE area <= (SELECT min(area) FROM city WHERE city.country_id = country.id);
use aliases for self-correlated subqueries: SELECT * FROM city as c1 WHERE c1.rating > (SELECT avg(c2.rating) FROM city AS c2 WHERE c1.country_id=c2.country_id);
exists operator: SELECT * FROM country WHERE EXISTS (SELECT * FROM mountain WHERE country.id = mountain.country_id);
```

### Set operations

Relational algebra is the formal math underlying SQL. Unlike SQL, it’s set-based, so it automatically removes duplicates from its ‘results’. RA operators are applied to expression, - trees, or assignment statements:

- select rows: σcondition ∧ condition  tname
- project columns: πcol_name, col_name
- compose:  πcol_name, col_name(σcondition ∧ condition )
- operators: 
- and, ∧; or, ∨; union, ∪
- cross product, x: union of schemas, every possible combo of tuples (ntuples(A)*ntuples(B))
- natural join, ⋈: match cols & drop duplicates; A⋈B ≡ πschema(A) ∪ πschema(B)(σA.col = B.col ∧ …  (AxB))
- theta join: A ⋈θ B where A⋈θB ≡ σθ(AxB); default join for many DBMS
- rename, ⍴Name(cname, …) (A): unifies schemas to satisfy conditions of set operators and to allow disambiguation in self-joins; ⍴Name(A), ⍴cname, … (A)
- difference, -
- intersection, ⋂ where A⋂B ≡ A - (A-B), A⋂B ≡ A⋈B 
- symmetric difference: (A-B)∪(B-A)




# Check for inclusion

- SELECT, FROM, CAST, RANK(), DENSE_RANK()
- WITH
- GROUP BY, HAVING, aggregate functions (SUM, MIN, MAX, AVG, COUNT) 
- UPDATE
- OUTPUT
- MERGE
- remove duplicates
- subqueries (simple, correlated)
- EXCEPT
- DATE functions

https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql



# T-SQL

- Inclusive: SELECT … WHERE [date] BETWEEN ‘20120225’ AND ‘20120230’;
- Exclusive: SELECT … WHERE [date] > 2012-02-25’ AND [date] < ‘20120230’; 
    - Note that dates are given as strings
- Retrieve date, modify date & alias: SELECT DATEADD(DAY, 7, OrderDate) AS "EstimatedDeliveryDate" FROM Sales.SalesOrderHeader WHERE MONTH(OrderDate) = 6 AND YEAR(OrderDate) = 2007;
- Numeric functions, aliasing, conditional selection. date functions: SELECT COUNT(*) AS 'HowManyMarchOrders', SUM(TotalDue) AS 'TotalDueForMarch', AVG(TotalDue) AS 'AvgOrderTotal', 
    - SELECT COUNT(*) [HowManyMarchOrders] FROM ... 
- MIN(TotalDue) AS 'CheapestOrder', MAX(TotalDue) AS 'CostliestOrder'  FROM Sales.SalesOrderHeader WHERE MONTH(OrderDate) = 5 AND YEAR(OrderDate) = 2008;
- SELECT CustomerID, COUNT(TotalDue) AS '#orders', SUM(TotalDue) AS '$orders' FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = 2007 GROUP BY CustomerID HAVING COUNT(TotalDue) > 1 - ORDER BY SUM(TotalDue) DESC;
- SELECT CONVERT(CHAR(20), DATEADD(DAY, 30, GETDATE()), 101) AS [30 Days From Today];
- SELECT DISTINCT SalesPersonID FROM Sales.SalesOrderHeader oh INNER JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID WHERE ProductID = 777 ORDER BY SalesPersonID;




# Cookbook and examples

```SQL
SELECT c.CustomerID, c.TerritoryID, COUNT(o.SalesOrderid) AS [Total Orders],
    DENSE_RANK() OVER (PARTITION BY c.TerritoryID ORDER BY COUNT(o.SalesOrderid)) AS [Rank]
FROM Sales.Customer c LEFT OUTER JOIN Sales.SalesOrderHeader o ON c.CustomerID = o.CustomerID
WHERE DATEPART(year, OrderDate) = 2007
GROUP BY c.TerritoryID, c.CustomerID;
```

Select product_id, name and selling start date for all products that started selling before 01/01/2006. Use the CAST function to display the date only. You need to work with the Production.Product table. The syntax for CAST is CAST(expression AS data_type), where expression is the column name we want to format and  we can use DATE as data_type for this question to display just the date.

```SQL
SELECT ProductID, Name, CAST(SellStartDate AS DATE) SellStartDate
FROM Production.Product
WHERE SellStartDate < '01/01/2006';
```

Select the product id, name, and list price for the product(s) that has the highest list price. You need to work with the Production.Product table. You’ll need to use a simple subquery to get the maximum list price and use it in the WHERE clause.

```SQL
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice = (SELECT MAX(ListPrice) FROM Production.Product);
```

Modify the following query to add a column that identifies the frequency of repeat customers and contains the following values based on the number of orders during 2007:

```SQL
SELECT c.CustomerID, c.TerritoryID, COUNT(o.SalesOrderid) AS 'Total Orders',
    CASE
        WHEN COUNT(o.SalesOrderid) = '0'
            THEN 'No Orders'
        WHEN COUNT(o.SalesOrderid) = '1'
            THEN 'One Time'
        WHEN COUNT(o.SalesOrderid) BETWEEN '2' AND '5'
            THEN 'Regular'
        WHEN COUNT(o.SalesOrderid) BETWEEN '6' AND '12'
            THEN 'Often'
        ELSE 'Very Often'
    END AS 'Order Frequency'
FROM Sales.Customer c LEFT OUTER JOIN Sales.SalesOrderHeader o ON c.CustomerID = o.CustomerID
WHERE YEAR(OrderDate) = 2007
GROUP BY c.TerritoryID, c.CustomerID
ORDER BY 'Order Frequency' DESC;
```

Write a SQL query to generate a list of customer ID's that have never placed an order before. Sort the list by CustomerID in the ascending order.

Solution with JOIN:

```SQL
SELECT CustomerID
FROM Sales.Customer c LEFT OUTER JOIN Sales.SalesOrderHeader h
ON c.CustomerID = h.CustomerID
WHERE h.CustomerID IS NULL
ORDER BY CustomerID ASC; 
```

Solution with subquery:

```SQL
SELECT CustomerID
FROM Sales.Customer
WHERE CustomerID NOT IN 
    (SELECT CustomerID FROM Sales.SalesOrderHeader)
ORDER BY CustomerID ASC;
```




# SOURCES

## References

- [w3schools SQL tutorial](http://www.w3schools.com/sql/default.asp)
- [Weller’s SQL cheatsheet](http://weller.engl.uw.edu/mysql/)
- [Treehouse - SQL basics cheatsheet](https://github.com/treehouse/cheatsheets/blob/master/sql_basics/cheatsheet.md)
- [Treehouse - SQL reporting cheatsheet](https://github.com/treehouse/cheatsheets/blob/master/reporting_with_sql/cheatsheet.md)
- [Treehouse - SQL to modify data cheatsheet](https://github.com/treehouse/cheatsheets/blob/master/modifying_data_with_sql/cheatsheet.md)
- [Codecademy - SQL Glossary](https://www.codecademy.com/articles/sql-commands)

## Archive

- [SQL queries](https://academy.vertabelo.com/course/sql-queries)
- [Operating on data in SQL](https://academy.vertabelo.com/course/operating-on-data-in-sql)
- [Creating tables](https://academy.vertabelo.com/course/creating-tables-in-sql)
- [SQL Style Guide](http://www.sqlstyle.guide/)
- [Treehouse - Reporting with SQL](https://teamtreehouse.com/library/reporting-with-sql)
- [SQL](https://lagunita.stanford.edu/courses/DB/SQL/SelfPaced/about)

## Inbox

- [7 steps to mastering SQL](http://www.kdnuggets.com/2016/06/seven-steps-mastering-sql-data-science.html)
- [Table Transformations](https://www.codecademy.com/learn/sql-table-transformation)
- [SQL Quiz](http://www.afterhoursprogramming.com/tutorial/SQL/SQL-Quiz/)
- [Learn SQL the Hard Way](http://sql.learncodethehardway.org/book/)
