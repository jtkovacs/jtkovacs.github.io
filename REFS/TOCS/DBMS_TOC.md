<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/DBMS.html">https://jtkovacs.github.io/REFS/HTML/DBMS.html</a></p><table class="TOC"><tr><td>- [Overview of DBMS](#overview-of-dbms)
	- [Core functionality](#core-functionality)
	- [DBMS by popularity](#dbms-by-popularity)
- [Relational DBMS](#relational-dbms)
	- [MySQL](#mysql)
		- [Manage databases](#manage-databases)
		- [Manage users](#manage-users)
	- [Microsoft SQL Server](#microsoft-sql-server)
		- [SQL Server Configuration Manager ](#sql-server-configuration-manager-)
		- [SQL Server Management Studio](#sql-server-management-studio)
			- [Manage databases](#manage-databases)
			- [Manage tables ](#manage-tables-)
		- [Manage views](#manage-views)
	- [Microsoft Access](#microsoft-access)
		- [Data types](#data-types)
		- [Administration](#administration)
		- [Improving navigability](#improving-navigability)
		- [SQL dialect novelties](#sql-dialect-novelties)
		- [Sharing an Access database](#sharing-an-access-database)
			- [Splitting a database](#splitting-a-database)
			- [Migrating to Microsoft SQL Server](#migrating-to-microsoft-sql-server)
- [Graph DBMS](#graph-dbms)
	- [PoolParty](#poolparty)
	- [Neo4j](#neo4j)
- [Sources](#sources)
	- [References](#references)
</td></tr></table>




# Overview of DBMS

## Core functionality

From [notes on databases:](database.html#what-is-a-database?)

A database management system is either (1) a database engine for interacting with the database plus a database frontend for interacting with the user; or (2) these two things plus a database per definition (1) above. A DMBS may be desktop-based (Access, FileMaker Pro) or server-based (SQL Server, Oracle, DB2, MySQL, PostgreSQL). Most DBMS offer:

- A convenient language offering two data sublanguages:
    - A data definition language **(DDL)** that expresses a schema, stored in the system catalog AKA data directory, data dictionary; 
    - A data manipulation language **(DML),**
        - which enables CRUD operations (create, read, update, delete);
        - which includes the capacity to query/retrieve/read the data and is therefore often called a query language, though this is technically incorrect;
        - which may be procedural or, as with SQL, nonprocedural/declarative;
- Access to database metadata through the system catalog;
- Support for concurrent access (data sharing);
- Enforcement of access authorization (security);
- Enforcement of constraints on data input (integrity);
- Backup and recovery;
- Views that are customized to the needs of specific audiences.

## DBMS by popularity






# Relational DBMS

## MySQL

[phpMyAdmin](https://www.phpmyadmin.net/) is a MySQL GUI, or you can work with MySQL from Bash: 

```Bash
/usr/bin/mysql -u [uname] -p [pwd]
quit;

/var/log/mysql/error.log
# errors log location 

less my.cnf
# view configs
```

### Manage databases

```SQL
CREATE DATABASE dname;

SHOW DATABASES;
```

### Manage users

```SQL
SELECT User, Host, Password FROM mysql.user;
-- view users

INSERT INTO mysql.user (User,Host,Password) VALUES('username','localhost',PASSWORD('pwd')); 
FLUSH PRIVILEGES;
-- add user

UPDATE mysql.user SET Password = PASSWORD('pwd') WHERE User = 'root'; 
FLUSH PRIVILEGES;
-- change password
 
GRANT ALL PRIVILEGES ON demodb.* to demouser@localhost; 
FLUSH PRIVILEGES; 
SHOW GRANTS FOR 'demouser'@'localhost';
-- grant privileges
```




## Microsoft SQL Server

- Data types
- CTE
- Installing logs and data on different drives gives a performance boost

### SQL Server Configuration Manager 

Shows every instance of a SQL Server product on a machine; lets you restart a process and enable protocols for communication between client & server.

### SQL Server Management Studio

- **Activity Monitor:** use for identifying bottlenecks & kill process if needed (but might cause data corruption!)
- SQL Server Profiler: lets you start a trace for ongoing tracking of activity; can specify activities of interest in detail

#### Manage databases

A database has a default PRIMARY filegroup; can create other filegroups, e.g. to hold tables that should be read-only.

```SQL
CREATE DATABASE dbname
```

#### Manage tables 

- **Create PK:** Right click table > Design > Select field, click key icon > In column properties window, change Identity Specification to “yes”
- **Inspect relationships:**
    - [Database] > [Table] > Keys
    - [Database] > Database diagrams

```SQL
CREATE TABLE tname (fieldname datatype, fielddname datatype ... ) ON Filegroupname
```

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

CREATE TABLE tname (fdname INT IDENTITY(1,1) PRIMARY KEY NONCLUSTERED, fdname, fdname   )
WITH (MEMORY-OPTIMIZED=ON)

```

**Temporal tables** (only SQL Server 2016) automatically maintain the history of the table, which can be queried. The fields ValidFrom, ValidTo, and PERIOD FOR SYSTEM_TIME are required:

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

### Manage views

Create view: [Database] > [Views] > right click to create new view. This is done to facilitate reporting, since data that is logically related (city and states) may be scattered across multiple tables; however, it create a penalty for writing data. Views can be made persistent to increase performance: right click view > Script View as > ALTER To > New Query Editor Window > Add “WITH SCHEMABINDING” under “ALTER VIEW” line > Execute > Refresh Object Explorer pane > Right click on Indexes > Clustered index > Add columns.




## Microsoft Access

An Access database is made up of different objects:

- **Tables:**
    - Autosaves when inputting records; need to save changes to DB structure though
    - Database Tools > Relationships; drag & drop interface
    - **Control input:**
        - Check “Enforce referential integrity”, “Cascade update” and “Cascade delete” to prevent orphan records
        - Can make a field required
        - Specify formatting: Design View > choose field > Input Mask > e.g. (xxx) xxx-xxxx
        - Default value: Design View > choose field > Default Value > … > =”United States”
        - Design View > choose field > Validation Rule > … > =Date(), =”MasterCard” OR “Visa”
        - Design View > choose field > Validation Text > The credit card you’ve entered has expired!
- **Queries:**
    - **Different types:** Create > Query Design > Totals, Select, Update, Make Table, Delete, Append, Crosstab > Run
        - Deletion: Query Design > join Table and Query affecting Table > Property Sheet > set Unique Records to Yes > Delete > Run
        - Append is a permanent combination of two tables; union is a temporary combination
        - Crosstab is similar to totals, but presents the results in matrix form
    - Choose join type: double click on UML associations in Query Design view
- **Forms** give a user-friendly interface for tables and queries:
    - Choose table > Create > Form (or Form Wizard, or Form Design)
    - Basing forms on queries (rather than tables) makes future modifications easier 
    - Dashboard: Create > Navigation; drag & drop forms onto this page
    - [Tips for designing Access Forms](http://www.opengatesw.net/ms-access-tutorials/Access-Articles/MS-Access-Forms.htm)
    - Add a combo box to the header of a form for easier navigation (e.g. by employee name)
- **Reports,** unlike forms, are printer-friendly:
    - Create > Report (or Report Design or Report Wizard)
    - Design > Group & Sort, Totals
    - Format > Conditional Formatting
- **Macros** automate operations, making forms more capable:
    - Create > Macro
    - Button macros: Design > create a button --> Property Sheet > Events > On Click > … > ApplyFilter
    - Remove all filters: ApplyFilter > Where Condition = true
    - Data macros: use to make logs that capture editing. create a log table; Table > After Update > … 
    - Name macro autoexec to run it on launch
- **Modules** are for Visual Basic code.

Objects might not be immediately visible; right click on “All Access Objects”, choose “Navigation Options” from the resulting menu, and check “Show Hidden Objects”.

### Data types

- Short text, long text
    - Store numbers as text if you don’t need to manipulate them mathematically, e.g. phone numbers
- Autonumber/keys 
- Int
- Float 
- Binary
- Attachment 
- Hyperlink 
- Calculated field
- Currency
- Lookup Wizard: Design View > choose field > Data Type > Lookup Wizard
    - Lookup list is dynamic, based on a query --> leave the “Hide key column” check box selected
    - Lookup value list is static, good for a small number of relatively fixed values

### Administration

Optimize: 

- Database Tools > Access Database (splits database into front-end=queries+forms+reports and back-end=tables)
- Design View > choose field > Field Size
- Indexing

Troubleshooting: 

- External Data > Linked Table Manager
- Database Tools > Compact & Repair (run periodically)

Get information:

- Database Tools > Object Dependencies
- Database Tools > Database Documenter 

### Improving navigability

- Create custom groups to replace the default Tables/Forms/Queries in the lefthand navigation pane
- Design View of tables/queries/etc. lets you add descriptions and tool tips for fields
- Build a custom ribbon with frequently-used commands & macros: Options > Customize Ribbon
- Define startup actions, default views, and limited views: Options > Current Database
    - Name macro autoexec to run it on launch
    - Bypass by holding shift key while opening database

### SQL dialect novelties

- Date delimiter: BETWEEN #00/00/0000# AND #00/00/0000#



### Sharing an Access database

- [https://support.office.com/en-us/article/Ways-to-share-an-Access-desktop-database-03822632-da43-4d8f-ba2a-68da245a0446](https://support.office.com/en-us/article/Ways-to-share-an-Access-desktop-database-03822632-da43-4d8f-ba2a-68da245a0446)
- [How to Make MS Access Database Executable](https://www.youtube.com/watch?v=aylQNvVDPsg)

#### Splitting a database

Why split a database? Database performance can be improved by splitting the database: tables in one file, all other objects (like queries, forms, and reports) in another. 

- [http://www.techrepublic.com/blog/10-things/10-plus-reasons-to-split-an-access-database/](http://www.techrepublic.com/blog/10-things/10-plus-reasons-to-split-an-access-database/)
- [https://support.office.com/en-us/article/Split-an-Access-database-3015ad18-a3a1-4e9c-a7f3-51b1d73498cc?ui=en-US&rs=en-US&ad=US](https://support.office.com/en-us/article/Split-an-Access-database-3015ad18-a3a1-4e9c-a7f3-51b1d73498cc?ui=en-US&rs=en-US&ad=US)

How? Database Tools > Access Database > Database Splitter wizard. 

- Naming conventions: for mydb.accdb, the backend can be named mydb_be.accdb or mybd_datafile.accdb
- Tables in mydatabase.accdb are linked tables
- Backend goes on server
- What about .mdb?? 
    - https://support.microsoft.com/en-us/kb/118609
    - https://support.office.com/en-us/article/Which-Access-file-format-should-I-use-012d9ab3-d14c-479e-b617-be66f9070b41
- Prepare frontend
  - Consider compiling the frontend file to limit functionality: Database Tools > Make ACCDE > Save as mydb.accde or mydd.mde
  - Hide menus: Access Options > deselect Display Navigation Pane
- Prepare backend
  - Backup plan?
  - https://support.microsoft.com/en-us/kb/162522: "When you distribute your application, instruct a network or system administrator to run the Setup program for your back-end database on the network file server first ... After Setup install the appropriate files on the file server, instruct all users to run the setup program for your front-end database. This setup program sets up your main application and all of the Microsoft Access run-time files on each user's computer."

#### Migrating to Microsoft SQL Server

  
  
  
  
  
  
  
  
# Graph DBMS

## PoolParty



## Neo4j

The **editor** accepts input:

- [Cypher queries](Cypher.html) to work with graph data
- Client-side commands available, e.g. ```:help```
- Run query: `ctrl+enter`
- Multiline command: `shift+enter`

The **stream** displays output:

- Clear stream: `:clear`
- Monitor: `:play sysinfo`



  
  

# Sources

## References

- [http://allenbrowne.com/tips.html](http://allenbrowne.com/tips.html)