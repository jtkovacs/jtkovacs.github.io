
# What is a database?

A **database** is a either (1) collection of data that's structured according to a **data model** (usually relational, as [discussed below;](#the-relational-data-model) see [notes on information structures](information-architecture.html#information-structures) for other major data models); or (2) this structured data plus a database management system (DBMS). 

A [DBMS](DBMS.html) is either a **database engine** for interacting with the database plus a **database frontend** for user interaction, per definition (1) above; or these two things plus a database, per definition (2) above. A DMBS may be desktop-based (Access, FileMaker Pro) or server-based (SQL Server, Oracle, DB2, MySQL, PostgreSQL). See [notes on typical DBMS functionality.](DBMS.html#core-functionality)

A **database system** is a database/DBMS plus database applications (any applications that source from or feed data to the database). This term denotes only the technical environment of a database; the full **database environment** encompasses hardware, software, data, procedures, and people.


## The database system lifecycle

<table>
<tr><th colspan="2">Requirements Analysis</th></tr>
<tr><th rowspan=3>Design</th><td>Conceptual</td></tr>
<tr><td>Logical</td></tr>
<tr><td>Physical</td></tr>
<tr><th rowspan="2">Development</th><td>Implementation</td></tr>
<tr><td>Testing</td></tr>
<tr><th rowspan="2">Administration</th><td>Rollout</td></tr>
<tr><td>Support</td></tr>
</table>



## History of databases

The first computerized information systems (IBM, c. 1950) imitated **hierarchical** paper filing systems. The more semantically powerful **graph** AKA network data model followed shortly thereafter (1960s, also IBM). In early systems, file and data formats were specific to an application or language; applications were specific to a department. This arrangement led to

- ***redundancy:*** the same data collected (\$\$) and stored (\$\$) by multiple departments;
- ***inconsistency:*** redundant data that *should be the same* is not updated consistently;
- ***inaccessibility:*** software developers were needed to write queries and integrate data across applications; no ad hoc queries or data processing.

Hierarchies and graphs were superseded by Edgar Codd's **relational** data model, proven in the 1970s and implemented in the 1980s. A relational database addresses the aforementioned problems because it is ***centralized*** (reducing redundancy, improving consistency, enabling data integration) and ***abstracted*** (available as a black box to interface with many different applications; offering an accessible language for ad hoc queries). It also:

- Scales to terabytes with excellent performance for processing transactions
- Is platform-independent due to ANSI standards, allowing transfer of code across different products
- Is comparatively cheap to purchase and maintain, and widely available
- Provides a [programming/query language](SQL.html) that is easy to learn and execute, expediting data retrieval
- Minimizes data redundancy, conserving storage and safeguarding data quality (although some redundancy is still required to establish relationships)
- Can capture complex relationships (important for enforcing business rules)
- [Preserves data integrity](#normalization-and-integrity)

**Object** databases introduced features like encapsulation and polymorphism c. 1990, but never became popular or standardized. With the advent of Big Data, [NoSQL databases](#NoSQL-databases) (an umbrella term for non-relational database with SQL-like interface) have become popular because they beat relational DBs at quick search; however, relational databases are still better at maintaining data integrity (via transaction management with ACID properties).

### ANSI-SPARC architecture

This is one way of thinking about database abstraction/separation, which, in general, makes the database easier to change and maintain by providing **data independence:**

- External views for different users (i.e., subsets and derivations of the data) are described by subschemas. Views are **logically independent** from the conceptual level.
- The structure of the entire database---all entities, attributes, relationships, and constraints---is described by a conceptual schema. This conceptual layer is **physically independent** from implementation details.
- Implementation details, including storage allocation, compression, and encryption, are described by an internal schema.

Then, the DBMS creates mappings (also called intensions; a realization of a schema is called the extension or state of the database) between schemas.




## Types of databases

### The relational data model

In a relational database, the data model is of **tables** AKA relations. Tables have **rows** (AKA tuples, records) and **columns** (AKA attributes, fields). The order of rows and columns is insignificant.

Representing reality in terms of entities, attributes and relationships occurs during the [conceptual design phase](#conceptual-design) of database development. Per Ullman (2006), **many different relational schemas could be used to model any given reality;** the best designs will suit the underlying business processes and be [in a normal form.](#normalization-and-integrity) 

#### Relationships between entities

The relationship between two entites has several characteristics. The **participation** of a relationship is mandatory or optional; the **cardinality** AKA modality of a relationships may be one-to-one, one-to-many, or many-to-many; see [ERDs](modeling.html#erds-for-databases) for notation. A relationship is **identifying** if the PK of a parent entity appears in the PK of a child entity, denoted with a solid line; nonidentifying relationships are denoted with dashed lines.

##### Associative entities

Many-to-many relationships must be resolved with an associative entity (AKA junction table) that has a combined primary key (PK), both of which are foreign keys (FK). For example, consider a taxi company that owns cars; employs drivers; randomly assigns each driver a car for their shift; and wants to maintain a record for liability purposes. Entities CAR and DRIVER have a many-to-many relationship, since a driver will be assigned to multiple cars over the course of their employment and a car will likewise be driven by many different drivers. To capture the necessary data, SHIFTS is created as an associative entity with attributes driver ID, car ID, and shift date.

##### Superclasses and subclasses

Entities may be classified as superclasses and subclasses; this provides more semantic meaning to an ER model, makes the ER model more readable, and (depending on implementation) can reduce the number of NULLs in the database. There are several implementation options:

- Subclass entity contains superclass PK along with its own unique attributes;
- Subclass entity contains all superclass attributes along with its own unique attributes;
- The ERD includes a superclass and subclass(es) but they are implemented as a single table.


#### Types of attributes

Per Sunderraman (2012) and the Database Management Wikia (n.d.), an attribute is:

- **Composite** if it can be decomposed into **atomic** attributes (which, per first normal form, it should be).
- **Derived** if its value can be calculated from (an)other attribute(s) (which, per third normal form, it shouldn't be).
- **Multi-valued** AKA set-valued if, for a single entity, the attribute could/should store multiple values (one-to-many relationship); in this case, the multi-valued attribute should be moved to a new table and linked back to the main entity via the entity's primary key.  

##### Dependencies and keys

Note that these concepts are important for understanding [normalization;](#normalization-and-integrity) normalization is a process of allocating attributes to entities to achieve a certain configuration of dependencies within each entity.

Dependencies exist between attributes; this is not a modeling decision, it is a feature of the real world. There are different sorts of dependencies.

A **functional dependency** `A→B` exists when the same A (an attribute value, for our purposes) is linked to a single B (another attribute value). The reverse is not necessarily true. Note that this is like a mathematical function, where each x, a function input, must correspond to exactly one value of y, the function output, but a single value of y might correspond to multiple different values of x:

| This is a Function | This is Not a Function | 
| --- | --- |
| ![](../ILLOS/fcn.png) | ![](../ILLOS/not-fcn.png) |

Written in predicate logic, an FD exists if, for `∀ t,u ∈ R, t.A = u.A ⇒ t.B = u.B`. This generalizes to multiple attributes: `A1, A2, ..., An → B1, B2, ..., Bm`. FDs are used in DB compression and query optimization.

- Trivial FD: `A→B & B⊆A`
- nontrivial FD: `A→B & B⊈A`
- completely nontrivial FD: `A→B & A∩B=∅` 
- transitive property: `A→B & B→C ⇒ A→C`
- the __closure__ of A, {A}\*, is all attributes functionally determined by A
- __keys__ AKA identity values are attributes whose closure encompasses all attributes in a relation 
    - Surrogate Key: Artificial (non-intelligent) column added to entity for the sole purpose of performing Primary Key duties (oftentimes an INTEGER)
    - Candidate Key: Column(s) that can uniquely identify rows in an entity
    - Identify primary keys (may be “natural”, i.e. present in the data, or “synthetic/surrogate”, for DB use alone; may be “concatenated/composite”. 
        - INTEGER is most-often the best data type choice
        - Will not change in value
        - Will not be null
        - Narrow field
- `S2`, a set of FDs, follows from `S1` if every relation satisfying `S1` also satisfies `S2`
- `S2`, set of FDs, is equivalent to `S1` if exactly the same FDs follow from `S1` and `S2`

- Watt, n.d.: "The left-hand side of the FD is called the determinant, and the right-hand side is the dependent."
- Determinant: Attribute(s) whose value determines the value of a second (set of) attribute(s);


Describe what **Transitive Dependency** is and give an example: If a functional dependency exists between X and Y, and a functional dependency exists between Y and Z, then a transitive dependency exists between X and Z. Transitive dependencies create problems in relational databases so they are typically removed during normalization. As an example, consider a table (perhaps in a bookstore database) with three attributes: ISBN, TITLE, AUTHOR, PHONE NUMBER. ISBN is the primary key; TITLE and AUTHOR are functionally dependent on it; but PHONE NUMBER is functionally dependent on AUTHOR, not on ISBN. Therefore a transitive dependency exists between PHONE NUMBER and ISBN. 

- https://stackoverflow.com/questions/9950367/what-is-wrong-with-a-transitive-dependency 
- https://www.thoughtco.com/transitive-dependency-1019760 

__[Multivalued dependency](http://infolab.stanford.edu/~ullman/fcdb/aut07/slides/mvds.pdf)__ (MVD), `A↠B`: A multivalued dependency exists if all tuples share their A attributes; tuple v shares B attributes with t, and its remaining attributes with u; tuple w shares A attributes with u, and its remaining attributes with t. In predicate logic: `if ∀ t,u∈R | t.A = u.A then ∃ v∈R | v.A=t.A and v.B=t.B and v.rest=u.rest.` Furthermore, `∃ w∈R | w.A=t.A and w.B=u.B and w.rest=t.rest`.

- trivial MVD: `A↠B & B⊆A` or `A∪B ={ all attributes}`; e.g. `AB↠B`
- if `A→B`, then also `A↠B`
- intersection rule: `A↠B & A↠C ⇒ A↠B⋂C`
- transitive rule: `A↠B & B↠C ⇒ A↠C-B`
- a relation A is __decomposed__ into B and C if the union of B and C’s attributes contains all of A’s attributes and `B⋈C = A` (the lossless join property). 

2. Determinants vs keys

displayName (2015):
- A primary key or any candidate key is also a determinant while the opposite is not true.
- A determinant can uniquely determine one or more attributes in the row.
- A candidate key can uniquely determine the entire row.



#### Normalization and integrity

i.e. will satisfy the requirements of the relational data model and thereby (a) minimize redundancy and (b) preserve data integrity, avoiding (i) update and (ii) deletion anomalies. 

Levels of normalization: http://searchsqlserver.techtarget.com/definition/normalization: 

- “First normal form (1NF). This is the "basic" level of database normalization, and it generally corresponds to the definition of any database, namely:
    - It contains two-dimensional tables with rows and columns.
    - Each column corresponds to a sub-object or an attribute of the object represented by the entire table.
    - Each row represents a unique instance of that sub-object or attribute and must be different in some way from any other row (that is, no duplicate rows are possible).
    - All entries in any column must be of the same kind. For example, in the column labeled "Customer," only customer names or numbers are permitted.
- 1NF: all fields only include a single piece of data;
- Second normal form (2NF). At this level of normalization, each column in a table that is not a determiner of the contents of another column must itself be a function of the other columns in the table. For example, in a table with three columns containing the customer ID, the product sold and the price of the product when sold, the price would be a function of the customer ID (entitled to a discount) and the specific product.
- 2NF: all fields in the PK are required to determine the non-key fields, i.e., data not dependent on primary key is moved to another table;
- Third normal form (3NF). At the second normal form, modifications are still possible because a change to one row in a table may affect data that refers to this information from another table. For example, using the customer table just cited, removing a row describing a customer purchase (because of a return, perhaps) will also remove the fact that the product has a certain price. In the third normal form, these tables would be divided into two tables so that product pricing would be tracked separately.”
- 3NF: all the non-key fields are independent from other non-key fields, i.e., don’t store calculable data in the database (conduct calculations in SQL).
- [__Boyce Codd normal form__ (BCNF)](http://stackoverflow.com/questions/2718420/candidate-keys-from-functional-dependencies) is when, for all FDs `A→B`, A is the key. To achieve BCNF, find FDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with `A→B` violating BCNF; decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A, rest); repeat. 
- __Fourth normal form__ (4NF) is more restrictive than BCNF. Its whole point is to separate independent information (i.e., not functionally dependent information) to achieve efficiency: B+C rather than B\*C tuples. A relation is in 4NF if, for each nontrivial MVD `A↠B`, A is the key. To test for 4NF, look at each pair of tuples `t,u` that match on A, and create the additional tuples `v,w`: are they both already in the relation? If not, MVD is not satisfied. To achieve 4NF, find FDs, MVDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with nontrivial `A↠B` violating 4NF (3) decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A,rest); repeat.

In the real world, we usually normalize only up to the 3rd Normal Form.

##### Entity integrity

Entity integrity: enforced by primary key

rows are unique (they need a key).

##### Referential integrity

Referential integrity: enforced by keys (PK-FK pair)

Referential Integrity Constraint: Constraint that limits the values in an FK to those that already exist in the PK of the corresponding entity. One table’s primary key may be used in another table as a foreign key, establishing a relationship between the two tables; referential integrity means that the key is consistent across tables. Specifically, when a row is added to the latter table, its FK value should come from the former table’s PK or it should be NULL.

##### Domain integrity

Domain integrity: column values should fall within a given domain, enforced by column data type

columns store single type of data; column names are unique. Columns have data types and domains, which can be a restricted list of values. 




### NoSQL databases

NoSQL databases use non-relational data models ... 

- **Key-value model,** e.g. Dynamo, Riak, Basho: _[Key|Value|Timestamp]._ Provides easy and fast storage for simple data.
- **Columnar model,** e.g. Google’s Bigtable, Apache’s HBase (part of Hadoop): _[Row Key|Value|Timestamp|Column Family|Column Name]._ Good for retaining relationships (since columns can be grouped into families). 
- **Document model,** e.g. MongoDB, JSON, XML. Good for storing complex hierarchical relationships.
- **Graph/triple model,** e.g. Neo4j. Good for capturing a web of relationships.

... plus some of these other features ...

- Open source & less costly hardware
- Distributed storage and processing rather than client/server architecture
- Memory cache
- Batch processing (Google Map Reduce) or interactive AKA stream processing (Apache Tez Framework, Apache Spark, Facebook Presto)
- Proprietary and/or (for Presto, Hive QL, Pig, Cassandra Query Language (CQL), Cosmos/Scope) SQL-like interfaces  
- Analytics integration (Hive, Amazon’s Redshift, Facebook’s Presto, Airbnb’s Airpal)

... to store Big Data ...  

- large **volume** (petabytes rather than terabytes)
- wide **variety** (structured and unstructured)
- high **velocity**

... achieving greater speed by: 

- appending rather than updating records, and 
- denormalizing data upon input. 



# Database development

A good design process minimizes redundancy; reduces errors by automating or imposing constraints on data entry; permits multiple analyses by replacing multipart fields with atomic ones; avoids data conflicts by reserving calculation to the analysis phase, rather than storing results; and ensures complete information by requiring it during input. **Best practices for DB design:**

- Clearly identify scope of database
- Follow a database design methodology, e.g. SDLC, Agile
- Use a professional data modeling tool, e.g. MS Visio
- Use a source control system, e.g. GitHub

Note that databases are often developed in parallel with the applications that will use them. Also, DB development may use CASE (computer-aided software engineering) tools that help with standardization, integration, consistency, and automation. For databases, CASE tools may provide forward engineering (generating database-creating code based on ERD) and reverse engineering (generating ERD from existing database; an efficient way of producing documentation).


## Business requirements

- Conduct a **cost-benefit analysis** for the proposed database;
- Write a **mission statement and objectives;**
- Gather and formulate **business requirements** by analyzing the business processes, documents, workflows, etc. that will be replaced or supported by the database:
    - Within the scope of the objectives, identify key **actors;**
    - Interview actors to understand **tasks** that actors execute;
    - Identify pertinent **business rules,** i.e., database design constraints that arise from the business processes being modeled, not from requirements of the data model.


## Design phases

All stages of design are beholden to the underlying data model. Conceptual design is broader, mostly focused on grouping attributes into tables; logical design is more granular, mostly focused on properties and constraints of each attribute. Lastly, physical design is focused on specifying the database and its interfaces, etc. according to a particular DBMS.

### Conceptual design

In the conceptual design stage of database development, there are two competing approaches: 

- The **top-down approach** (AKA design by decomposition) begins with identifying entities and relationships in the domain to be modeled, then filling in attributes. Entity relationship diagrams are often used. ERDs can be done in [ER or UML notation;](modeling.html#erds-for-databases) MS Visio offers both. 
- The **bottom-up approach** begins with identifying attributes, then grouping them until entities and relationships emerge. Connolly and Begg (2015) suggest that a bottom-up approach is manageable only for smaller databases. For a larger, more complex database, a top-down approach may be necessary so that the database designer doesn’t get overwhelmed by numerous attributes.

Regardless, the end goal is a schema that is [normalized](#normalization-and-integrity) to avoid anomalies. 

In addition to constructing tables via a top-down or bottom-up approach, a conceptual design should:

- Identify relationships verbally;
- Identify cardinality (max#) and optionality (min#) associated with each relationship;
- Identify entity subtypes/subclasses;
- Specify lookup tables;
- Identify [primary keys.](#types-of-attributes)

### Logical design
    
Proceed table by table, field by field:

- Choose naming conventions (avoid special characters and reserved words for your DBMS);
- Choose data types, which vary by DBMS;
    - Store numbers as text if you don’t need to manipulate them mathematically, e.g. phone numbers
- Resolve many-to-many relationships with [associative entities;](#associative-entities)
- Apply [integrity constraints:](#normalization-and-integrity)
    - With a lookup table; 
    - With a referential integrity constraint to prevent orphaned records; 
    - Through a check constraint. 
- Denote required fields.

### Physical design
    
Physical design depends on DBMS-specific features; see [notes on DBMS software.](DBMS.html) The goal of this stage is to provide all the information necessary to build a database that takes advantage of features from the chosen platform.

#### Indexing and performance

Indexing accelerates queries but reduces write speed. The PK is indexed by default, and commonly searched fields may be indexed as well. There are different kinds of indexes:

- **Clustered indexes** determine physical storage ... [sort of.](http://blog.waynesheffield.com/wayne/archive/2012/10/does-a-clustered-index-really-physically-store-the-rows-in-key-order/) There's only one clustered index per table.
- There can be more than one **non-clustered index** on a table.
- A **columnstore index** is used to improve performance of read-only tables. 

See:

- [http://use-the-index-luke.com/sql/table-of-contents](http://use-the-index-luke.com/sql/table-of-contents)
- [https://www.simple-talk.com/sql/performance/14-sql-server-indexing-questions-you-were-too-shy-to-ask/](https://www.simple-talk.com/sql/performance/14-sql-server-indexing-questions-you-were-too-shy-to-ask/)


    



# Database administration

## Data and log files

## Transaction management

ACID

## Security

### Authentication

### Backup

### Encryption

#### Digital signatures

Digital signatures are based on Public Key techniques; are different for each use; are commonly used for online transactions




# Sources

## Cited

displayName. (2015, December 3). Are determinants and candidate keys same or different things? [Comment]. Stack Overflow. Message posted to [https://stackoverflow.com/questions/16706637/are-determinants-and-candidate-keys-same-or-different-things](https://stackoverflow.com/questions/16706637/are-determinants-and-candidate-keys-same-or-different-things)

E/R model: types of attributes. (n.d.). Retrieved from the Database Management Wiki: [http://databasemanagement.wikia.com/wiki/E/R_Model:_Type_of_Attributes](http://databasemanagement.wikia.com/wiki/E/R_Model:_Type_of_Attributes)

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.

Sunderraman, R. (2012). Entity-relationship (ER) model. Retrieved from [http://tinman.cs.gsu.edu/~raj/4340/sp12/er.html](http://tinman.cs.gsu.edu/~raj/4340/sp12/er.html)

Ullman, R. D. (2006). Relational database design. Retrieved from [http://infolab.stanford.edu/~ullman/fcdb/jw-notes06/reldesign.html](http://infolab.stanford.edu/~ullman/fcdb/jw-notes06/reldesign.html)

Watt, A. (n.d.). Functional dependencies. In _Database design._ Retrieved from [https://opentextbc.ca/dbdesign/chapter/chapter-11-functional-dependencies/](https://opentextbc.ca/dbdesign/chapter/chapter-11-functional-dependencies/)

## References

- [Database Management Wikia](http://databasemanagement.wikia.com/wiki/Main_Page)
- [Use the index, Luke: A guide to database performance for developers](http://use-the-index-luke.com/sql/table-of-contents)

## Read

- [Intro. to Relational Databases](https://lagunita.stanford.edu/courses/DB/RDB/SelfPaced/about)
- [Relational Algebra](https://lagunita.stanford.edu/courses/DB/RA/SelfPaced/about)
- [Relational Design Theory](https://lagunita.stanford.edu/courses/DB/RD/SelfPaced/about)
- [Relational Database Fundamentals](http://www.lynda.com/Access-tutorials/Relational-Database-Fundamentals/145932-2.html)
- [ORM is an offensive anti-pattern](http://www.yegor256.com/2014/12/01/orm-offensive-anti-pattern.html)
- [Access 2016](http://www.lynda.com/Access-tutorials/Access-2016-Essential-Training/367064-2.html)

## Unread

- [How does a relational database work?](http://coding-geek.com/how-databases-work/)
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
 -[BigSQL on Hadoop](https://bigdatauniversity.com/courses/sql-access-on-hadoop-big-sql-v4/)
- [Enterprise NoSQL for Dummies](http://faculty.washington.edu/blabob/bob/eBooks/Enterprise%20NoSQL%20for%20Dummies%20(eBook).pdf)
- [Graph Databases](http://graphdatabases.com/)
