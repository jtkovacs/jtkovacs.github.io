<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/databases.html">https://jtkovacs.github.io/REFS/HTML/databases.html</a></p><table class="TOC"><tr><td>- [What is a database?](#what-is-a-database?)
	- [History of databases](#history-of-databases)
		- [ANSI-SPARC architecture](#ansi-sparc-architecture)
		- [The relational data model](#the-relational-data-model)
			- [Kinds of attributes ](#kinds-of-attributes-)
			- [Referential integrity](#referential-integrity)
			- [Associative entities](#associative-entities)
			- [Superclasses and subclasses](#superclasses-and-subclasses)
- [Database design](#database-design)
	- [Groundwork](#groundwork)
	- [Conceptual design](#conceptual-design)
		- [Top-down vs. bottom-up design](#top-down-vs.-bottom-up-design)
			- [Bottom-up design through normalization](#bottom-up-design-through-normalization)
			- [Top-down design with ERDs](#top-down-design-with-erds)
	- [Logical design](#logical-design)
	- [Physical design](#physical-design)
- [Database administration](#database-administration)
	- [Indexing & performance](#indexing-&-performance)
	- [Data and log files](#data-and-log-files)
	- [Transaction management](#transaction-management)
	- [Data movement](#data-movement)
	- [Security](#security)
		- [Encryption](#encryption)
			- [Digital signatures](#digital-signatures)
		- [Backup](#backup)
- [Sources](#sources)
	- [References](#references)
	- [Read](#read)
	- [Unread](#unread)
</td></tr></table>

# What is a database?

A **database** is a either (1) collection of data that's structured according to a **data model** (usually relational, as [discussed below;](#the-relational-data-model) see [notes on information structures](information-architecture.htm#information-structures) for other major data models); or (2) this structured data plus a database management system (DBMS). 

A [DBMS](DBMS.html) is either a **database engine** for interacting with the database plus a **database frontend** for user interaction, per definition (1) above; or these two things plus a database, per definition (2) above. A DMBS may be desktop-based (Access, FileMaker Pro) or server-based (SQL Server, Oracle, DB2, MySQL, PostgreSQL). See [notes on typical DBMS functionality.](DBMS.html#core-functionality)

A **database system** is a database/DBMS plus database applications (any applications that source from or feed data to the database). This term denotes only the technical environment of a database; the full **database environment** encompasses hardware, software, data, procedures, and people.

## History of databases

The first computerized information systems (IBM, c. 1950) imitated **hierarchical** paper filing systems. The more semantically powerful **graph** AKA network data model followed shortly thereafter (1960s, also IBM). In early systems, file and data formats were specific to an application or language; applications were specific to a department. This arrangement led to

- ***redundancy:*** the same data collected (\$\$) and stored (\$\$) by multiple departments;
- ***inconsistency:*** redundant data that *should be the same* is not updated consistently;
- ***inaccessibility:*** software developers were needed to write queries and integrate data across applications; no ad hoc queries or data processing.

Hierarchies and graphs were superseded by Edgar Codd's **relational** data model, proven in the 1970s and implemented in the 1980s. A relational database addresses the aforementioned problems because it is ***centralized*** (reducing redundancy, improving consistency, enabling data integration) and ***abstracted*** (available as a black box to interface with many different applications; offering an accessible language for ad hoc queries). It also:

- Scales to accomodate exceptionally large data sets with excellent performance for processing transactions
- Is platform-independent due to ANSI standards, allowing transfer of code across different products
- Is comparatively cheap to purchase and maintain
- Provides a programming/query language that is easy to learn and execute, expediting data retrieval
- Minimizes data redundancy, conserving storage and safeguarding data quality (although some redundancy is still required to establish relationships)

**Object** databases introduced features like encapsulation and polymorphism c. 1990, but never became popular or standardized. With the advent of Big Data, **NoSQL** databases (unbrella term for non-relational database with SQL-like interface) have become popular because they beat relational DBs at quick search; however, relational databases are still better at maintaining data integrity (via transaction management with ACID properties).


### ANSI-SPARC architecture

This is one way of thinking about database abstraction/separation, which, in general, makes the database easier to change and maintain by providing **data independence:**

- External views for different users (i.e., subsets and derivations of the data) are described by subschemas. Views are **logically independent** from the conceptual level.
- The structure of the entire database---all entities, attributes, relationships, and constraints---is described by a conceptual schema. This conceptual layer is **physically independent** from implementation details.
- Implementation details, including storage allocation, compression, and encryption, are described by an internal schema.

Then, the DBMS creates mappings (also called intensions; a realization of a schema is called the extension or state of the database) between schemas.


### The relational data model

In a relational database, the data model is of **tables** AKA relations. Tables have **rows** (AKA tuples, records) and **columns** (AKA attributes, fields). Columns have types, AKA d domains, which can be enumerated. Rules of relations: cells contain single values; columns store single type of data; column names are unique; order is insignificant; rows are unique (they need a key).

#### Kinds of attributes 

An attribute is composite if its value can be decomposed. For example, an entity CAT may have an attribute OWNER NAME; this composite attribute could be decomposed into two atomic/simple attributes (OWNER FIRST NAME, OWNER LAST NAME).

An attribute is multi-valued/set-valued if, for a single entity, the attribute could/should store multiple values. For example, a PERSON entity may have a LANGUAGES SPOKEN attribute that must contain multiple values to accommodate multilingual people.

An attribute is derived if its value can be calculated from (an)other attribute(s) in the database. For example, the value of the attribute TRIP DURATION could be derived from the attributes DEPARTURE DATE and RETURN DATE.

Determinant: Attribute(s) whose value determines the value of a second (set of) attribute(s)

An attribute may be a **key** or identity value. Kinds of keys: 

- Surrogate Key: Artificial (non-intelligent) column added to entity for the sole purpose of performing Primary Key duties (oftentimes an INTEGER)
- Candidate Key: Column(s) that can uniquely identify rows in an entity

Identity values must/How to pick a key. Which of the following are guidelines for an Entity Identifier (aka 'Primary Key')?

- INTEGER is most-often the best data type choice
- Will not change in value
- Will not be null
- Narrow field

#### Referential integrity

Referential Integrity Constraint: Constraint that limits the values in an FK to those that already exist in the PK of the corresponding entity

Explain what referential integrity is and how it is maintained within the Relational Data Model. 

One table’s primary key may be used in another table as a foreign key, establishing a relationship between the two tables; referential integrity means that the key is consistent across tables. Specifically, when a row is added to the latter table, its FK value should come from the former table’s PK or it should be NULL.

#### Associative entities

When two entities are related in many-to-many fashion, an associative entity must be created to resolve the relationship. For example, consider a taxi company that owns cars; employs drivers; randomly assigns each driver a car for their shift; and wants to maintain a record for liability purposes. Entities CAR and DRIVER have a many-to-many relationship, since a driver will be assigned to multiple cars over the course of their employment. To capture the necessary data, SHIFTS is created as an associative entity with attributes driver ID, car ID, and shift date.

#### Superclasses and subclasses

Supertype/Subtype (described as Superclass/Subclass in the Connolly & Begg book) implementation: 

- Provides more semantic meaning to an ER model: TRUE
- Makes an ER model more readable: TRUE
- Introduces more NULL values to a database: FALSE
- Supertype and Subtypes have the same primary key: TRUE
- Subclasses have three different translation procedures: 
    - Subclass relations contain superclass PK and unique attributes;
    - Subclass relations contain all superclass attributes & unique attributes;
    - One relation contains all super- and subclass attributes.





# Database design

A good design process prevents repetition; reduces errors (by limiting data entry through use of IDs, and imposing constraints); permits multiple analyses (by replacing multipart fields with atomic ones); avoids data conflicts (by reserving calculation to the analysis phase, rather than storing results); and ensures complete information (by requiring it during input). 

Connolly and Begg (2015) outline the following database development process:

- Groundwork
- In the **conceptual design stage,** a database designer analyzes the business processes, documents, workflows, etc. that will be replaced or supported by the database. The goal is to understand thoroughly the business context of the database and to identify the entities (objects) and attributes (characteristics) it must contain. 
- In the **logical design stage,** the entities and attributes are expressed in terms of the chosen data model (often relational). The goal is to express the data in a structured way that avoids data anomalies. 
- Finally, in the **physical design phase,** the database designer produces software-specific instructions for implementing the database. The goal is to provide all the information necessary to build a database that takes advantage of features (like indexes) from the chosen platform.
- Implementation
- Rollout
- Maintenance

## Groundwork

- __Conduct cost-benefit analysis for proposed database__
- __Requirements analysis__: 
    - Write a mission statement and objectives;
    - Analyze current data inputs and outputs; 
    - Within the scope of the objectives, identify key actors;
    - Interview actors to understand tasks that actors execute.
    
Explain what is meant by 'business rules' and provide an example.

Business rules are database design constraints that arise from the business processes being modeled, not from requirements imposed by the relational data model (or other data model). Business rules affect the design of the database, including how entities are related; what attributes are collected; and what values are permitted or required for specific attributes. As an example, consider a database that stores donor and donations data for a nonprofit. Some business rules in this case might be that  donors can make multiple donations, multiple donors can be associated with the same donation, and individual donation amounts must be over $10.

## Conceptual design
  
- __Create conceptual design__:
    - Group fields into tables a logical way;
    - Identify relationships verbally, and/or visualize in UML;
    - Identify cardinality (max#) and optionality (min#) associated with each relationship;
    - Identify entity subtypes/subclasses;
    - Create lookup tables;
    - Identify primary keys (may be “natural”, i.e. present in the data, or “synthetic/surrogate”, for DB use alone; may be “concatenated/composite”. 
- __Normalize your data model__ (see [Design by decomposition](#design-by-decomposition))
    - 1NF: all fields only include a single piece of data;
    - 2NF: all fields in the PK are required to determine the non-key fields, i.e., data not dependent on primary key is moved to another table;
    - 3NF: all the non-key fields are independent from other non-key fields, i.e., don’t store calculable data in the database (conduct calculations in SQL).

### Top-down vs. bottom-up design

In the conceptual design stage of database development, there are two competing approaches: top-down and bottom-up. The top-down approach begins with identifying entities and relationships in the domain to be modeled, then filling in attributes. Entity relationship diagrams are often used. The bottom-up approach begins with identifying attributes, then grouping and normalizing them until entities and relationships emerge. Connolly and Begg (2015) suggest that a bottom-up approach is manageable only for smaller databases. For a larger, more complex database, a top-down approach may be necessary so that the database designer doesn’t get overwhelmed by numerous attributes. 

#### Bottom-up design through normalization

In the real world, we usually normalize only up to the 3rd Normal Form: TRUE

Design by decomposition avoids redundancy and its consequences (update & deletion anomalies). First, specify “mega” relations and dependencies to capture real-world constraints on the data; then, decompose into better (i.e., normalized) relations.

__Functional dependency (FD)__, `A→B`: The same A is always linked with the same B, although the reverse is not necessarily true. In predicate logic, a FD exists if, for `∀ t,u ∈ R, t.A = u.A ⇒ t.B = u.B`. This generalizes to multiple attributes: `A1, A2, …, An → B1, B2, …, Bm.` FDs are used in DB compression and query optimization.

- trivial FD: `A→B & B⊆A`
- nontrivial FD: `A→B & B⊈A`
- completely nontrivial FD: `A→B & A∩B=∅` 
- transitive property: `A→B & B→C ⇒ A→C`
- the __closure__ of A, {A}\*, is all attributes functionally determined by A 
- __keys__ are attributes whose closure encompasses all attributes in a relation 
- `S2`, a set of FDs, follows from `S1` if every relation satisfying `S1` also satisfies `S2`
- `S2`, set of FDs, is equivalent to `S1` if exactly the same FDs follow from `S1` and `S2`

Describe what Transitive Dependency is and give an example.

If a functional dependency exists between X and Y, and a functional dependency exists between Y and Z, then a transitive dependency exists between X and Z. Transitive dependencies create problems in relational databases so they are typically removed during normalization. As an example, consider a table (perhaps in a bookstore database) with three attributes: ISBN, TITLE, AUTHOR, PHONE NUMBER. ISBN is the primary key; TITLE and AUTHOR are functionally dependent on it; but PHONE NUMBER is functionally dependent on AUTHOR, not on ISBN. Therefore a transitive dependency exists between PHONE NUMBER and ISBN. 

[__Boyce Codd normal form__ (BCNF)](http://stackoverflow.com/questions/2718420/candidate-keys-from-functional-dependencies) is when, for all FDs `A→B`, A is the key. To achieve BCNF, find FDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with `A→B` violating BCNF; decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A, rest); repeat. 

__[Multivalued dependency](http://infolab.stanford.edu/~ullman/fcdb/aut07/slides/mvds.pdf)__ (MVD), `A↠B`: A multivalued dependency exists if all tuples share their A attributes; tuple v shares B attributes with t, and its remaining attributes with u; tuple w shares A attributes with u, and its remaining attributes with t. In predicate logic: `if ∀ t,u∈R | t.A = u.A then ∃ v∈R | v.A=t.A and v.B=t.B and v.rest=u.rest.` Furthermore, `∃ w∈R | w.A=t.A and w.B=u.B and w.rest=t.rest`.

- trivial MVD: `A↠B & B⊆A` or `A∪B ={ all attributes}`; e.g. `AB↠B`
- if `A→B`, then also `A↠B`
- intersection rule: `A↠B & A↠C ⇒ A↠B⋂C`
- transitive rule: `A↠B & B↠C ⇒ A↠C-B`
- a relation A is __decomposed__ into B and C if the union of B and C’s attributes contains all of A’s attributes and `B⋈C = A` (the lossless join property). 

__Fourth normal form__ (4NF) is more restrictive than BCNF. Its whole point is to separate independent information (i.e., not functionally dependent information) to achieve efficiency: B+C rather than B\*C tuples. A relation is in 4NF if, for each nontrivial MVD `A↠B`, A is the key. To test for 4NF, look at each pair of tuples `t,u` that match on A, and create the additional tuples `v,w`: are they both already in the relation? If not, MVD is not satisfied. To achieve 4NF, find FDs, MVDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with nontrivial `A↠B` violating 4NF (3) decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A,rest); repeat.

#### Top-down design with ERDs

A top-down design approach creates an entity relationship diagram (ERD), starting with entities and associations then adding in attributes. ERDs can be done in [ER notation](modeling.html#entity-relationship-diagrams) or [UML notation,](UML.html) which predates ER notation but is gradually replacing it.

## Logical design
    
- __Create logical design (rules and constraints)__:
    - Proceed table by table, field by field;
    - Choose naming conventions: avoid special characters and reserved words for your DBMS;
    - Choose data types;
        - Store numbers as text if you don’t need to manipulate them mathematically, e.g. phone numbers
    - Resolve many-to-many relationships by adding a junction table with the two tables’ PKs as its composite PK;
    - Apply integrity constraints:
        - With a lookup table; 
        - With a referential integrity constraint to prevent orphaned records; 
        - Through a check constraint. 
    - Denote required fields;

    
    
## Physical design
    
- __Create physical design (software-specific instructions)__: Construct, roll out, and support.
    - Build indexes for the most commonly searched fields (PK indexed by default; indexing reduces write speed).  






# Database administration

## Indexing & performance

- [http://use-the-index-luke.com/sql/table-of-contents](http://use-the-index-luke.com/sql/table-of-contents)
- [https://www.simple-talk.com/sql/performance/14-sql-server-indexing-questions-you-were-too-shy-to-ask/](https://www.simple-talk.com/sql/performance/14-sql-server-indexing-questions-you-were-too-shy-to-ask/)

Select all accurate statements about indexes.

- Indexes could improve query performance but slow down database content update: T
- Clustered indexes determine the physical storage of the related data: T
- There can be more than one non-clustered index on a table: T
- There can be more than one clustered index on a table: FALSE



## Data and log files

## Transaction management

## Data movement

## Security

### Encryption

#### Digital signatures

Digital signatures are based on Public Key techniques; are different for each use; are commonly used for online transactions

### Backup




# Sources

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.

## References

## Read

- [Intro. to Relational Databases](https://lagunita.stanford.edu/courses/DB/RDB/SelfPaced/about)
- [Relational Algebra](https://lagunita.stanford.edu/courses/DB/RA/SelfPaced/about)
- [Relational Design Theory](https://lagunita.stanford.edu/courses/DB/RD/SelfPaced/about)
- [Unified Modeling Language](https://lagunita.stanford.edu/courses/DB/UML/SelfPaced/about)
- [Relational Database Fundamentals](http://www.lynda.com/Access-tutorials/Relational-Database-Fundamentals/145932-2.html)
- [ORM is an offensive anti-pattern](http://www.yegor256.com/2014/12/01/orm-offensive-anti-pattern.html)
- [Access 2016](http://www.lynda.com/Access-tutorials/Access-2016-Essential-Training/367064-2.html)

## Unread

- [Overview of SQL RDBMS](https://www.codecademy.com/articles/sql-rdbms)
- [How does a relational database work?](http://coding-geek.com/how-databases-work/)
- [Migrating Access Databases to SQL Server](https://www.lynda.com/Access-tutorials/Migrating-Access-Databases-SQL-Server/397389-2.html)
- [Core Concepts for SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Core-Concepts/385693-2.html)
- [Storage in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Storage/385694-2.html)
- [Data Manipulation in SQL Server](http://www.lynda.com/SQL-Server-tutorials/Database-Fundamentals-Creating-Manipulating-Data/385697-2.html)
- [Indexes &amp; Transactions](https://lagunita.stanford.edu/courses/DB/Indexes/SelfPaced/about)
- [Constraints &amp; Triggers](https://lagunita.stanford.edu/courses/DB/Constraints/SelfPaced/about)
- [Views &amp; Authorization](https://lagunita.stanford.edu/courses/DB/Views/SelfPaced/about)
- [OLAP](https://lagunita.stanford.edu/courses/DB/OLAP/SelfPaced/about)
- [Recursion](https://lagunita.stanford.edu/courses/DB/Recursion/SelfPaced/about)
- [Database dependency](http://databases.about.com/od/specificproducts/a/Database-Dependency.htm)
- [CodeSchool - NoSQL with MongoDB](https://www.codeschool.com/courses/the-magical-marvels-of-mongodb)
- [From relational to graph databases](https://neo4j.com/developer/graph-db-vs-rdbms/)
- [Blockchain](https://en.wikipedia.org/wiki/Blockchain_(database))
- [Is Git a blockchain?](https://news.ycombinator.com/item?id=9436847)
- [SQL vs NoSQL](http://dataconomy.com/sql-vs-nosql-need-know/)
- [Beyond Relational](http://faculty.washington.edu/blabob/bob/eBooks/Beyond%20Relational%20(WP%20MarkLogic%202015).pdf)
- [Why NoSQL](http://faculty.washington.edu/blabob/bob/eBooks/Why%20NoSQL%20(WP%20IBM).PDF)
- [7 steps to understanding NoSQL databases](http://www.kdnuggets.com/2016/07/seven-steps-understanding-nosql-databases.html)
- [Mapping your SQL thinking to NoSQL](http://apigee.com/about/blog/technology/nosql-noproblem-mapping-your-sql-thinking-nosql)
- [XML data](https://lagunita.stanford.edu/courses/DB/XML/SelfPaced/about)
- [XPath &amp; XQuery](https://lagunita.stanford.edu/courses/DB/XPath/SelfPaced/about)
- [XSLT](https://lagunita.stanford.edu/courses/DB/XSLT/SelfPaced/about)
- [BigSQL on Hadoop](https://bigdatauniversity.com/courses/sql-access-on-hadoop-big-sql-v4/)
- [Enterprise NoSQL for Dummies](http://faculty.washington.edu/blabob/bob/eBooks/Enterprise%20NoSQL%20for%20Dummies%20(eBook).pdf)
- [Graph Databases](http://graphdatabases.com/)
