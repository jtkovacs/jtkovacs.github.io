<p class="path"><a href="../pkb.html">pkb contents</a> \> access | just under 863 words | updated 05/21/2017</p><div class="TOC">- &nbsp;1. [MS Access objects](#ms-access-objects)
- &nbsp;2. [Data types](#data-types)
- &nbsp;3. [Administration](#administration)
- &nbsp;4. [Improving navigability](#improving-navigability)
- &nbsp;5. [SQL dialect novelties](#sql-dialect-novelties)
- &nbsp;6. [Sharing an Access database](#sharing-an-access-database)
	- &nbsp;6.1. [Splitting a database](#splitting-a-database)
	- &nbsp;6.2. [Migrating to Microsoft SQL Server](#migrating-to-microsoft-sql-server)
- &nbsp;7. [Sources](#sources)
	- &nbsp;7.1. [References](#references)
</div>

# 1. MS Access objects

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

# 2. Data types

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



    
    
    
    
    
    
# 3. Administration

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



# 4. Improving navigability

- Create custom groups to replace the default Tables/Forms/Queries in the lefthand navigation pane
- Design View of tables/queries/etc. lets you add descriptions and tool tips for fields
- Build a custom ribbon with frequently-used commands & macros: Options > Customize Ribbon
- Define startup actions, default views, and limited views: Options > Current Database
    - Name macro autoexec to run it on launch
    - Bypass by holding shift key while opening database

    
    
    
    
# 5. SQL dialect novelties

- Date delimiter: BETWEEN #00/00/0000# AND #00/00/0000#



# 6. Sharing an Access database

- [https://support.office.com/en-us/article/Ways-to-share-an-Access-desktop-database-03822632-da43-4d8f-ba2a-68da245a0446](https://support.office.com/en-us/article/Ways-to-share-an-Access-desktop-database-03822632-da43-4d8f-ba2a-68da245a0446)
- [How to Make MS Access Database Executable](https://www.youtube.com/watch?v=aylQNvVDPsg)

## 6.1. Splitting a database

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

## 6.2. Migrating to Microsoft SQL Server

- [Migrating Access Databases to SQL Server](https://www.lynda.com/Access-tutorials/Migrating-Access-Databases-SQL-Server/397389-2.html)
  
  
  
  
  

 




# 7. Sources

## 7.1. References

- [http://allenbrowne.com/tips.html](http://allenbrowne.com/tips.html)
