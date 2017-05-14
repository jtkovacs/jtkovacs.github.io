<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/SQL-Server.html">https://jtkovacs.github.io/REFS/HTML/SQL-Server.html</a> \> 1807 words </p><table class="TOC"><tr><td>- [SQL Server](#sql-server)
	- [SQL Server Configuration Manager ](#sql-server-configuration-manager-)
	- [SQL Server Management Studio](#sql-server-management-studio)
- [T-SQL](#t-sql)
	- [Legend](#legend)
	- [Manage objects](#manage-objects)
		- [Databases](#databases)
		- [Schemas](#schemas)
		- [Tables ](#tables-)
			- [Datatypes](#datatypes)
			- [Temporal tables](#temporal-tables)
		- [Views](#views)
	- [Manage performance](#manage-performance)
		- [Splitting the database](#splitting-the-database)
		- [Creating indexes](#creating-indexes)
		- [Fixing index fragmentation](#fixing-index-fragmentation)
		- [Creating memory-optimized tables](#creating-memory-optimized-tables)
- [Sources](#sources)
	- [Cited](#cited)
	- [References](#references)
	- [Read](#read)
	- [Unread](#unread)
</td></tr></table>
# SQL Server

## SQL Server Configuration Manager 

Shows every instance of a SQL Server product on a machine; lets you restart a process and enable protocols for communication between client & server.

## SQL Server Management Studio

- **Activity Monitor:** use for identifying bottlenecks & kill process if needed (but might cause data corruption!)
- **SQL Server Profiler:** lets you start a trace for ongoing tracking of activity; can specify activities of interest in detail




# T-SQL

## Legend

Per Buyham and Guyer (2017), the syntax for [syntax documentation of T-SQL statements](https://docs.microsoft.com/en-us/sql/t-sql/statements/statements) uses the following conventions:

- **KEYWORD**
- **[** optional syntax item, brackets not typed **]**
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
    

## Manage objects
    
### Databases

```SQL
CREATE DATABASE dbname

USE SQLservername.databasename.schemaname.tablename
```

### Schemas

- [https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo](https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo)
- [http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server](http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server)

```SQL
CREATE SCHEMA sname AUTHORIZATION [dbo]
```

### Tables 

- **Create PK:** Right click table > Design > Select field, click key icon > In column properties window, change Identity Specification to “yes”
- **Filegroups:** A database has a default PRIMARY filegroup but you can create other filegroups, e.g. to hold tables that should be read-only.
- **Inspect relationships:**
    - [Database] > [Table] > Keys
    - [Database] > Database diagrams

```SQL
CREATE TABLE tname 
    (
    fieldname IDENTITY(seed, increment), 
    fielddname datatype, 
    ... 
    ) 
    ON Filegroupname;

--Disk-Based CREATE TABLE Syntax  
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

<column_index> ::=   
 INDEX index_name [ CLUSTERED | NONCLUSTERED ]  
    [ WITH ( <index_option> [ ,... n ] ) ]  
    [ ON { partition_scheme_name (column_name )   
         | filegroup_name  
         | default   
         }  
    ]   
    [ FILESTREAM_ON { filestream_filegroup_name | partition_scheme_name | "NULL" } ]  

<computed_column_definition> ::=  
column_name AS computed_column_expression   
[ PERSISTED [ NOT NULL ] ]  
[   
    [ CONSTRAINT constraint_name ]  
    { PRIMARY KEY | UNIQUE }  
        [ CLUSTERED | NONCLUSTERED ]  
        [   
            WITH FILLFACTOR = fillfactor   
          | WITH ( <index_option> [ , ...n ] )  
        ]  
        [ ON { partition_scheme_name ( partition_column_name )   
        | filegroup | "default" } ]  

    | [ FOREIGN KEY ]   
        REFERENCES referenced_table_name [ ( ref_column ) ]   
        [ ON DELETE { NO ACTION | CASCADE } ]   
        [ ON UPDATE { NO ACTION } ]   
        [ NOT FOR REPLICATION ]   

    | CHECK [ NOT FOR REPLICATION ] ( logical_expression )   
]   

<column_set_definition> ::=  
column_set_name XML COLUMN_SET FOR ALL_SPARSE_COLUMNS  

< table_constraint > ::=  
[ CONSTRAINT constraint_name ]   
{   
    { PRIMARY KEY | UNIQUE }   
        [ CLUSTERED | NONCLUSTERED ]   
        (column [ ASC | DESC ] [ ,...n ] )   
        [   
            WITH FILLFACTOR = fillfactor   
           |WITH ( <index_option> [ , ...n ] )   
        ]  
        [ ON { partition_scheme_name (partition_column_name)  
            | filegroup | "default" } ]   
    | FOREIGN KEY   
        ( column [ ,...n ] )   
        REFERENCES referenced_table_name [ ( ref_column [ ,...n ] ) ]   
        [ ON DELETE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]   
        [ NOT FOR REPLICATION ]   
    | CHECK [ NOT FOR REPLICATION ] ( logical_expression )  



< table_index > ::=   
{  
    {  
      INDEX index_name [ CLUSTERED | NONCLUSTERED ]   
         (column_name [ ASC | DESC ] [ ,... n ] )   
    | INDEX index_name CLUSTERED COLUMNSTORE  
    | INDEX index_name [ NONCLUSTERED ] COLUMNSTORE (column_name [ ,... n ] )  
    }  
    [ WITH ( <index_option> [ ,... n ] ) ]   
    [ ON { partition_scheme_name (column_name )   
         | filegroup_name  
         | default   
         }  
    ]   
    [ FILESTREAM_ON { filestream_filegroup_name | partition_scheme_name | "NULL" } ]  

}   


<table_option> ::=  
{  
    [DATA_COMPRESSION = { NONE | ROW | PAGE }  
      [ ON PARTITIONS ( { <partition_number_expression> | <range> }   
      [ , ...n ] ) ]]  
    [ FILETABLE_DIRECTORY = <directory_name> ]   
    [ FILETABLE_COLLATE_FILENAME = { <collation_name> | database_default } ]  
    [ FILETABLE_PRIMARY_KEY_CONSTRAINT_NAME = <constraint_name> ]  
    [ FILETABLE_STREAMID_UNIQUE_CONSTRAINT_NAME = <constraint_name> ]  
    [ FILETABLE_FULLPATH_UNIQUE_CONSTRAINT_NAME = <constraint_name> ]  
    [ SYSTEM_VERSIONING = ON [ ( HISTORY_TABLE = schema_name . history_table_name  
        [, DATA_CONSISTENCY_CHECK = { ON | OFF } ] ) ] ]  
    [ REMOTE_DATA_ARCHIVE =   
      {   
          ON [ ( <table_stretch_options> [,...n] ) ]  
        | OFF ( MIGRATION_STATE = PAUSED )   
      }   
    ]  
}  

<table_stretch_options> ::=  
{  
     [ FILTER_PREDICATE = { null | table_predicate_function } , ]  
       MIGRATION_STATE = { OUTBOUND | INBOUND | PAUSED }  
 }  

<index_option> ::=  
{   
    PAD_INDEX = { ON | OFF }   
  | FILLFACTOR = fillfactor   
  | IGNORE_DUP_KEY = { ON | OFF }   
  | STATISTICS_NORECOMPUTE = { ON | OFF }   
  | ALLOW_ROW_LOCKS = { ON | OFF}   
  | ALLOW_PAGE_LOCKS ={ ON | OFF}   
  | COMPRESSION_DELAY= {0 | delay [Minutes]}  
  | DATA_COMPRESSION = { NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE }  
       [ ON PARTITIONS ( { <partition_number_expression> | <range> }   
       [ , ...n ] ) ]  
}  
<range> ::=   
<partition_number_expression> TO <partition_number_expression>
    
    
-- Add field to existing table
CREATE




```

#### Datatypes

[Details here;](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql) also note that SQL Server's data types are [mapped to ISO standard data types.](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-type-synonyms-transact-sql)

- **Exact numeric:** NUMERIC, BIGINT, INT, SMALLINT, TINYINT, DECIMAL, BIT, MONEY, SMALLMONEY
- **Approximate numeric:** FLOAT, REAL 
- **Date and time:** DATE, TIME, DATETIME, DATETIME2, DATETIMEOFFSET, SMALLDATETIME
- **Character:** CHAR, VARCHAR, TEXT    
    - **Unicode character:** NCHAR, NVARCHAR, NTEXT
- **Binary:** BINARY, IMAGE, VARBINARY
- **Special purpose:** CURSOR, HIERARCHYID, SQL_VARIANT, TABLE, TIMESTAMP, UNIQUEIDENTIFIER, XML
    - [Spatial data types](https://docs.microsoft.com/en-us/sql/relational-databases/spatial/spatial-data-types-overview)

#### Temporal tables

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

### Views

- **Create view:** [Database] > [Views] > right click. This is done to facilitate reporting, since data that is logically related (city and states) may be scattered across multiple tables; however, it create a penalty for writing data. 
- **Views can be made persistent to increase performance:** right click view > Script View as > ALTER To > New Query Editor Window > Add “WITH SCHEMABINDING” under “ALTER VIEW” line > Execute > Refresh Object Explorer pane > Right click on Indexes > Clustered index > Add columns.



## Manage performance

### Splitting the database

Installing logs and data on different drives gives a performance boost.

### Creating indexes

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

### Fixing index fragmentation

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


### Creating memory-optimized tables

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





# Sources

## Cited

Buyham, R. & Guyer, C. (2017, March 14). Transact-SQL Syntax Conventions-Transact-SQL. Microsoft. Retrieved from [https://docs.microsoft.com/en-us/sql/t-sql/language-elements/transact-sql-syntax-conventions-transact-sql](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/transact-sql-syntax-conventions-transact-sql)

## References

- [Syntax documentation of T-SQL commands](https://docs.microsoft.com/en-us/sql/t-sql/statements/statements)

## Read

## Unread

- [Core Concepts for SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Core-Concepts/385693-2.html)
- [Storage in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Storage/385694-2.html)
- [Data Manipulation in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Creating-Manipulating-Data/385697-2.html)