<p id="path">https://jtkovacs.github.io/REFS/HTML/DBMS.html</p><table class="TOC"><tr><td>- [Overview of DBMS](#overview-of-dbms)
	- [Core functionality](#core-functionality)
	- [Popularity](#popularity)
- [Relational DBMS](#relational-dbms)
	- [MySQL](#mysql)
	- [Microsoft SQL Server](#microsoft-sql-server)
	- [Microsoft Access](#microsoft-access)
		- [Migrating to Microsoft SQL Server](#migrating-to-microsoft-sql-server)
- [Graph DBMS](#graph-dbms)
	- [PoolParty](#poolparty)
	- [Neo4j](#neo4j)
- [Source](#source)
</td></tr></table>




# Overview of DBMS

## Core functionality

## Popularity






# Relational DBMS

## MySQL
  
install: ubuntu
launch: /usr/bin/mysql -u [uname] -p[pwd]
exit: quit;
errors log location: /var/log/mysql/error.log
edit configs: less my.cnf
exit less: q
create database: CREATE DATABASE dname;
list all databases: SHOW DATABASES;

view users: SELECT User, Host, Password FROM mysql.user;
add user: INSERT INTO mysql.user (User,Host,Password) VALUES('username','localhost',PASSWORD('demopassword')); FLUSH PRIVILEGES;
change password: UPDATE mysql.user SET Password = PASSWORD('password') WHERE User = 'root'; FLUSH PRIVILEGES;
grant privileges: GRANT ALL PRIVILEGES ON demodb.* to demouser@localhost; FLUSH PRIVILEGES; SHOW GRANTS FOR 'demouser'@'localhost';

## Microsoft SQL Server

## Microsoft Access

http://allenbrowne.com/tips.html

components of a database: tables, saved queries, views, forms
data types: short/long text, autonumber/keys, int, float, binary, attachment, hyperlink, calculated field, currency, Lookup Wizard
date delimiter: BETWEEN #00/00/0000# AND #00/00/0000#
create tables:
Create > Table (or Table Design)
External Data > … (can import from Excel, XML, CSV, etc.; Access will add a primary key)
Autosaves when inputting records; need to save changes to DB structure though
Store numbers as text if you don’t need to manipulate them mathematically, e.g. phone numbers
define relationships:
Database Tools > Relationships; drag & drop interface
Check “Enforce referential integrity” , “Cascade update” and “Cascade delete” to prevent orphan records
control input:
can make a field required
specify formatting, e.g. e.g. (xxx) xxx-xxxx for a phone number: Design View > choose field > Input Mask > … 
default value: Design View > choose field > Default Value > … > =”United States”
validation rules: 
Design View > choose field > Validation Rule > … > =Date(), =”MasterCard” OR “Visa”
Design View > choose field > Validation Text > The credit card you’ve entered has expired!
lookup tables: Design View > choose field > Data Type > Lookup Wizard
Lookup list is dynamic, based on a query; leave the “Hide key column” check box selected
Lookup value list is static, good for a small number of relatively fixed values
optimize: Design View > choose field > Field Size; Indexed
query types: Create > Query Design> Totals, Select, Update, Make Table, Delete, Append, Crosstab > Run
choose join type: double click on UML associations in Query Design view
deletion: Query Design > join Table and Query affecting Table > Property Sheet > set Unique Records to Yes > Delete > Run
append is a permanent combination of two tables; union is a temporary combination
crosstab is similar to totals, but presents the results in matrix form
create forms: GUIs for database users
Choose table > Create > Form (or Form Wizard, or Form Design)
Basing forms on queries (rather than tables) makes future modifications easier
http://www.opengatesw.net/ms-access-tutorials/Access-Articles/MS-Access-Forms.htm 
for navigating multiple forms: Create > Navigation; drag & drop forms onto this page
specify form properties (many): 
Form Design > Properties Sheet > Format, Data, Event, Other  
… Properties Sheet > Data > Data Source → Design > Add Existing Fields
Design View > Layout
Add a combo box to the header of a form for easier navigation (e.g. by employee name)
reports: for printing, reading, analyzing trends
Create > Report (or Report Design or Report Wizard)
Design > Group & Sort, Totals
Format > Conditional Formatting
database maintenance & navigability:
Database Tools > Object Dependencies, Database Documenter, Compact & Repair (run periodically)
can create custom groups to replace the default Tables/Forms/Queries in the lefthand navigation pane
Design View of tables/queries/etc. lets you add descriptions and tool tips for fields
Database Tools > Access Database (splits database into front-end=queries+forms+reports and back-end=tables)
troubleshooting: External Data > Linked Table Manager
build a custom ribbon with frequently-used commands & macros: Options > Customize Ribbon
startup actions, default views, and limited views: Options > Current Database
bypass by holding shift key while opening database
macros: Create > Macro
button macros: Design > create a button > Property Sheet > Events > On Click > … > ApplyFilter
 remove all filters: ApplyFilter > Where Condition = true
data macros: use to make logs that capture editing. create a log table; Table > After Update > … 
name macro autoexec to run it on launch


### Migrating to Microsoft SQL Server

https://support.office.com/en-us/article/Ways-to-share-an-Access-desktop-database-03822632-da43-4d8f-ba2a-68da245a0446

- Split database
  - Database performance can be improved by splitting the database: tables in one file, all other objects (like queries, forms, and reports) in another. Other reasons to split a database.
  - How? Database Tools > Access Database > Database Splitter wizard. 
  - http://www.techrepublic.com/blog/10-things/10-plus-reasons-to-split-an-access-database/
  - https://support.office.com/en-us/article/Split-an-Access-database-3015ad18-a3a1-4e9c-a7f3-51b1d73498cc?ui=en-US&rs=en-US&ad=US
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
  - https://support.microsoft.com/en-us/kb/162522: When you distribute your application, instruct a network or system administrator to run the Setup program for your back-end database on the network file server first ... After Setup install the appropriate files on the file server, instruct all users to run the setup program for your front-end database. This setup program sets up your main application and all of the Microsoft Access run-time files on each user's computer.
  - https://www.youtube.com/watch?v=aylQNvVDPsg

  
  
  
  
  
  
  
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