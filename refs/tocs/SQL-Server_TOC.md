<p class="path"><a href="../pkb.html">pkb contents</a> \> SQL Server | nearly 1212 words | updated 05/16/2017</p><div class="TOC">- 1. [SQL Server](#sql-server)
	- 1.1. [SQL Server Configuration Manager ](#sql-server-configuration-manager-)
	- 1.2. [SQL Server Management Studio](#sql-server-management-studio)
- 2. [T-SQL](#t-sql)
	- 2.1. [Legend](#legend)
	- 2.2. [Manage objects](#manage-objects)
		- 2.2.1. [Databases](#databases)
		- 2.2.2. [Schemas](#schemas)
		- 2.2.3. [Tables ](#tables-)
			- 2.2.3.1. [Datatypes](#datatypes)
			- 2.2.3.2. [Temporal tables](#temporal-tables)
		- 2.2.4. [Views](#views)
	- 2.3. [Manage performance](#manage-performance)
		- 2.3.1. [Splitting the database](#splitting-the-database)
		- 2.3.2. [Creating indexes](#creating-indexes)
		- 2.3.3. [Fixing index fragmentation](#fixing-index-fragmentation)
		- 2.3.4. [Creating memory-optimized tables](#creating-memory-optimized-tables)
- 3. [Sources](#sources)
	- 3.1. [Cited](#cited)
	- 3.2. [References](#references)
	- 3.3. [Read](#read)
	- 3.4. [Unread](#unread)
</div>


# 1. SQL Server

## 1.1. SQL Server Configuration Manager 

Shows every instance of a SQL Server product on a machine; lets you restart a process and enable protocols for communication between client & server.

## 1.2. SQL Server Management Studio

- **Activity Monitor:** use for identifying bottlenecks & kill process if needed (but might cause data corruption!)
- **SQL Server Profiler:** lets you start a trace for ongoing tracking of activity; can specify activities of interest in detail




# 2. T-SQL

## 2.1. Legend

Per Buyham and Guyer (2017), the syntax for [syntax documentation of T-SQL statements](https://docs.microsoft.com/en-us/sql/t-sql/statements/statements) uses the following conventions:

- **KEYWORD**
- **\[** optional syntax item, brackets not typed **\]**
- use this syntax item **|** OR this syntax item
- **{**required syntax item, braces not typed**}**
- **\<syntax block label\> ::=** for documentation purposes only
- **[,...n]** indicates repeated elements with comma delimitation
- **[...n]** indicates repeated elements with space delimitation

```SQL
-- syntax documentation
CREATE TABLE
    [ database_name. [ schema_name ] . | schema_name. ] table_name   
    ( { <column_definition> } [ ,...n ] )   
[ ; ]  

-- example expression
CREATE TABLE dbo.tname
    (
    fname,
    fname
    );
```
    
    


## 2.2. Manage objects
    
### 2.2.1. Databases

```SQL
CREATE DATABASE dbname

USE SQLservername.databasename.schemaname.tablename
```

### 2.2.2. Schemas

- [https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo](https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo)
- [http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server](http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server)

```SQL
CREATE SCHEMA sname AUTHORIZATION [dbo]
```

### 2.2.3. Tables 

- **Filegroups:** A database has a default PRIMARY filegroup but you can create other filegroups, e.g. to hold tables that should be read-only.
- **Inspect relationships:**
    - [Database] > [Table] > Keys
    - [Database] > Database diagrams

```SQL
CREATE TABLE   
    [ database_name . [ schema_name ] . | schema_name . ] table_name   
    [ AS FileTable ]  
    ( {   <column_definition>   
        | <computed_column_definition>    
        | <column_set_definition>   
        | [ <table_constraint> ]   
        | [ <table_index> ] }  
          [ ,...n ]    
          [ PERIOD FOR SYSTEM_TIME ( system_start_time_column_name   
             , system_end_time_column_name ) ]  
      )  
    [ ON { partition_scheme_name ( partition_column_name )   
           | filegroup   
           | "default" } ]   
    [ TEXTIMAGE_ON { filegroup | "default" } ]   
    [ FILESTREAM_ON { partition_scheme_name   
           | filegroup   
           | "default" } ]  
    [ WITH ( <table_option> [ ,...n ] ) ]  
[ ; ]  

<column_definition> ::=  
column_name <data_type>  
    [ FILESTREAM ]  
    [ COLLATE collation_name ]   
    [ SPARSE ]  
    [ MASKED WITH ( FUNCTION = ' mask_function ') ]  
    [ CONSTRAINT constraint_name [ DEFAULT constant_expression ] ]   
    [ IDENTITY [ ( seed,increment ) ]  
    [ NOT FOR REPLICATION ]   
    [ GENERATED ALWAYS AS ROW { START | END } [ HIDDEN ] ]   
    [ NULL | NOT NULL ]  
    [ ROWGUIDCOL ]  
    [ ENCRYPTED WITH   
        ( COLUMN_ENCRYPTION_KEY = key_name ,  
          ENCRYPTION_TYPE = { DETERMINISTIC | RANDOMIZED } ,   
          ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'  
        ) ]  
    [ <column_constraint> [ ...n ] ]   
    [ <column_index> ]  

<data type> ::=   
[ type_schema_name . ] type_name   
    [ ( precision [ , scale ] | max |   
        [ { CONTENT | DOCUMENT } ] xml_schema_collection ) ]   

<column_constraint> ::=   
[ CONSTRAINT constraint_name ]   
{     { PRIMARY KEY | UNIQUE }   
        [ CLUSTERED | NONCLUSTERED ]   
        [   
            WITH FILLFACTOR = fillfactor    
          | WITH ( < index_option > [ , ...n ] )   
        ]   
        [ ON { partition_scheme_name ( partition_column_name )   
            | filegroup | "default" } ]  

  | [ FOREIGN KEY ]   
        REFERENCES [ schema_name . ] referenced_table_name [ ( ref_column ) ]   
        [ ON DELETE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ NOT FOR REPLICATION ]   

  | CHECK [ NOT FOR REPLICATION ] ( logical_expression )   
}   

    
-- Add field to existing table
CREATE




```

#### 2.2.3.1. Datatypes

[Details here;](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql) also note that SQL Server's data types are [mapped to ISO standard data types.](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-type-synonyms-transact-sql)

- **Exact numeric:** NUMERIC, BIGINT, INT, SMALLINT, TINYINT, DECIMAL, BIT, MONEY, SMALLMONEY
- **Approximate numeric:** FLOAT, REAL 
- **Date and time:** DATE, TIME, DATETIME, DATETIME2, DATETIMEOFFSET, SMALLDATETIME
- **Character:** CHAR, VARCHAR, TEXT    
    - **Unicode character:** NCHAR, NVARCHAR, NTEXT
- **Binary:** BINARY, IMAGE, VARBINARY
- **Special purpose:** CURSOR, HIERARCHYID, SQL_VARIANT, TABLE, TIMESTAMP, UNIQUEIDENTIFIER, XML
    - [Spatial data types](https://docs.microsoft.com/en-us/sql/relational-databases/spatial/spatial-data-types-overview)

#### 2.2.3.2. Temporal tables

Temporal tables (only SQL Server 2016) automatically maintain the history of the table, which can then be queried. The fields ValidFrom, ValidTo, and PERIOD FOR SYSTEM_TIME are required:

```SQL
CREATE TABLE Inventory ([InventoryID] int NOT NULL PRIMARY KEY CLUSTERED, 
[ItemName] nvarchar(100) NOT NULL, 
[ValidFrom] datetime2 (2) GENERATED ALWAYS AS ROW START, 
[ValidTo] datetime2 (2) GENERATED ALWAYS AS ROW END, 
PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo))    
WITH (SYSTEM_VERSIONING = ON); 

SELECT [StockItemName]
FROM [WideWorldImporters].[Warehouse].[StockItems]
FOR SYSTEM_TIME AS OF '2015-01-01'
WHERE StockItemName like '%shark%'
```

### 2.2.4. Views

- **Create view:** [Database] > [Views] > right click. This is done to facilitate reporting, since data that is logically related (city and states) may be scattered across multiple tables; however, it create a penalty for writing data. 
- **Views can be made persistent to increase performance:** right click view > Script View as > ALTER To > New Query Editor Window > Add “WITH SCHEMABINDING” under “ALTER VIEW” line > Execute > Refresh Object Explorer pane > Right click on Indexes > Clustered index > Add columns.



## 2.3. Manage performance

### 2.3.1. Splitting the database

Installing logs and data on different drives gives a performance boost.

### 2.3.2. Creating indexes

Recall that PKs are indexed automatically.

```SQL
-- Covering index
CREATE NONCLUSTERED INDEX IX_Address_PostalCode -- give index a name
ON Person.Address (PostalCode) -- specify table and key
INCLUDE (AddressLine1, AddressLine2, City, StateProvinceID); -- add other fields

-- Filtered index
CREATE NONCLUSTERED INDEX DesignEngineer
ON HumanResources.Employee (BusinessEntityID);
WHERE JobTitle = 'Design Engineer' -- filter

-- Columnstore index
CREATE NONCLUSTERED COLUMNSTORE INDEX csindx_simple 
ON SimpleTable (OrderDateKey, DueDateKey, ShipDateKey) 
WITH (DROP_EXISTING =  ON, -- drops and rebuilds an existing index of the same name 
    MAXDOP = 2) -- for parallel processing
    ON "default";
```

### 2.3.3. Fixing index fragmentation

Fragmentation can be identified with [sys.dm_db_index_physical_stats,](https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-db-index-physical-stats-transact-sql) a SQL Server [dynamic management function](https://blogs.msdn.microsoft.com/sqlcan/2012/05/24/a-microsoft-sql-server-dmvdmf-cheat-sheet/) **(DMF):**

```SQL
SELECT * 
FROM sys.dm_db_index_physical_stats (   
    { database_id | NULL | 0 | DEFAULT }  
  , { object_id | NULL | 0 | DEFAULT }  
  , { index_id | NULL | 0 | -1 | DEFAULT }  
  , { partition_number | NULL | 0 | DEFAULT }  
  , { mode | NULL | DEFAULT | DETAILED | SAMPLE | LIMITED | }  
)

SELECT * 
FROM sys.dm_db_index_physical_stats (DB_ID(N'AdventureWorks'), 
    OBJECT_ID(N'Person.Address'), NULL, NULL , 'DETAILED'); 
-- Column **Avg_fragmentation_in_percent** depicts logical fragmentation
-- Column **Avg_page_space_used_in_percent** depicts internal fragmentation
```

Once identified, fragmentation can be repaired in the following ways:

```SQL
-- Recreate 
CREATE INDEX WITH DROP_EXISTING;

-- Rebuild 
ALTER INDEX ... REBUILD;

-- Reorganize 
ALTER INDEX ... REORGANIZE 
```


### 2.3.4. Creating memory-optimized tables

In-memory AKA **memory-optimized tables** are used to improve performance of read-write tables. The keyword `GO` causes preceding commands to be submitted as a batch, and `USE` ensures that the table is created within the right database:

```SQL
ALTER DATABASE dbname
ADD FILEGROUP fgname
CONTAINS MEMORY_OPTIMIZED_DATA;

ALTER DATABASE dbname
ADD FILE (Name = ‘fname’, Filename ‘fpath/fname’)
TO FILEGROUP fgname;

GO

USE dbname
GO

CREATE TABLE tname (fdname INT IDENTITY(1,1) PRIMARY KEY NONCLUSTERED, fdname, fdname)
WITH (MEMORY-OPTIMIZED=ON)
```





# 3. Sources

## 3.1. Cited

Buyham, R. & Guyer, C. (2017, March 14). Transact-SQL Syntax Conventions-Transact-SQL. Microsoft. Retrieved from [https://docs.microsoft.com/en-us/sql/t-sql/language-elements/transact-sql-syntax-conventions-transact-sql](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/transact-sql-syntax-conventions-transact-sql)

## 3.2. References

- [Syntax documentation of T-SQL commands](https://docs.microsoft.com/en-us/sql/t-sql/statements/statements)

## 3.3. Read

## 3.4. Unread

- [Core Concepts for SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Core-Concepts/385693-2.html)
- [Storage in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Storage/385694-2.html)
- [Data Manipulation in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Creating-Manipulating-Data/385697-2.html)