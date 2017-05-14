# SQL Server Configuration Manager 

Shows every instance of a SQL Server product on a machine; lets you restart a process and enable protocols for communication between client & server.

# SQL Server Management Studio

- **Activity Monitor:** use for identifying bottlenecks & kill process if needed (but might cause data corruption!)
- **SQL Server Profiler:** lets you start a trace for ongoing tracking of activity; can specify activities of interest in detail
- **Syntax legend:** [how to interpret syntax documentation](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/transact-sql-syntax-conventions-transact-sql) of [T-SQL commands](https://docs.microsoft.com/en-us/sql/t-sql/statements/statements)
    - `KEYWORDS`
    - _user-supplied parameters_
    - `<label> ::=` is not typed; it just gives the name of the syntax block
    - 

## Manage databases

```SQL
CREATE DATABASE dbname

USE SQLservername.databasename.schemaname.tablename
```

## Manage schemas

- [https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo](https://stackoverflow.com/questions/1062075/why-do-table-names-in-sql-server-start-with-dbo)
- [http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server](http://www.sqlteam.com/article/understanding-the-difference-between-owners-and-schemas-in-sql-server)

```SQL
CREATE SCHEMA sname AUTHORIZATION [dbo]
```


## Manage tables 

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
    
-- Add field to existing table
CREATE
```


### Datatypes

[Details here;](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql) also note that SQL Server's data types are [mapped to ISO standard data types.](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-type-synonyms-transact-sql)

- **Exact numeric:** NUMERIC, BIGINT, INT, SMALLINT, TINYINT, DECIMAL, BIT, MONEY, SMALLMONEY
- **Approximate numeric:** FLOAT, REAL 
- **Date and time:** DATE, TIME, DATETIME, DATETIME2, DATETIMEOFFSET, SMALLDATETIME
- **Character:** CHAR, VARCHAR, TEXT    
    - **Unicode character:** NCHAR, NVARCHAR, NTEXT
- **Binary:** BINARY, IMAGE, VARBINARY
- **Special purpose:** CURSOR, HIERARCHYID, SQL_VARIANT, TABLE, TIMESTAMP, UNIQUEIDENTIFIER, XML
    - [Spatial data types](https://docs.microsoft.com/en-us/sql/relational-databases/spatial/spatial-data-types-overview)

### Temporal tables

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

## Manage views

- **Create view:** [Database] > [Views] > right click. This is done to facilitate reporting, since data that is logically related (city and states) may be scattered across multiple tables; however, it create a penalty for writing data. 
- **Views can be made persistent to increase performance:** right click view > Script View as > ALTER To > New Query Editor Window > Add “WITH SCHEMABINDING” under “ALTER VIEW” line > Execute > Refresh Object Explorer pane > Right click on Indexes > Clustered index > Add columns.


# Sources

## Cited

## References

## Read

## Unread

- [Core Concepts for SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Core-Concepts/385693-2.html)
- [Storage in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Storage/385694-2.html)
- [Data Manipulation in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Creating-Manipulating-Data/385697-2.html)