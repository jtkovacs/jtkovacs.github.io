
# What is a database?

A database is a structured collection of data. A database management system (DBMS) includes a database, a database engine that handles CRUD operations (create, read, update, delete), and a database frontend for user interaction. A DMBS may be desktop-based (Access, FileMaker Pro) or server-based (SQL Server, Oracle, DB2, MySQL, PostgreSQL). In a relational database, the data model is of tables/relations. Other data models are XML, graph, and documents. Tables have rows (also called tuples or records) and columns (also called attributes, fields, or values). Table columns have types (also called domains), which can be enumerated. Rules of relations: cells contain single values; columns store single type of data; column names are unique; order is insignificant; rows are unique (they need a key).

- **Database** = Data + DBMS
- **Database System** = Database + Database Applications
- **Database Environment** = Hardware + Software + Data + Procedures + People

- Data is formatted according to a data model;
- Data is managed via a database management system **(DBMS),** which includes **data sublanguages:**
    - a data definition language **(DDL)** that expresses a schema, stored in the **system catalog** (AKA data directory, data dictionary); 
    - a data manipulation language **(DML),**
        - which includes the capacity to query (retrieve) the data and is therefore often called a query language (though technically incorrect);
        - which also includes the capacity to create, update, and delete data;
        - which may be procedural or, as with SQL, nonprocedural/declarative;
    - access to metadata about the database, i.e., the system catalog;
    - support for concurrent access **(data sharing);**
    - enforcement of access authorization **(security);**
    - enforcement of constraints on data input **(integrity);**
    - backup and recovery;
    - views that are customized to the needs of specific audiences;
- Other applications can interact with the data by communicating with the DBMS.

## Data models

### Object-based

Allow specification of constraints, but not overall structure. Includes **entities** with **attributes** and **relationships,** describing the **state** of the object.

- Entity-Relationship (ER)
- Semantic
- Functional
- (3G) Object-oriented: adds **behavior** alongside state.

### Record-based

Can’t express constraints on the data, but express structure well.

#### (1G) Hierarchical

Good for modeling parts-of-a-thing, which is a fairly simple relationship. A polyhierarchy (family tree) is a little more complex than a strict hierarchy (tree).

#### (1G) Graph

AKA networks, AKA triples. Enables explicit modeling of different kinds of relationships (Has, IsCreatedBy, etc.) as well as more relationships (not restricted to one parent). Records are also called nodes and segments; relationships are also called edges.

#### (2G) Relational

Tables with columns, with implicit relationships via attributes.

### Physical data models

Most common: unifying model, frame memory.




# History of databases

The first computerized information systems imitated hierarchical paper filing systems. File and data formats were specific to an application or language; applications were specific to a department. This arrangement led to

- **redundancy:** the same data collected and stored by multiple departments;
- **inconsistency:** redundant data that *should be* the same not updated consistently;
- **inaccessibility:** software developers were needed to write queries and integrate data across applications; no ad hoc queries or data processing.

A database addresses the aforementioned problems because it is **centralized** (reducing redundancy, improving consistency, enabling data integration) and **abstracted** (available as a black box to interface with many different applications; offering an accessible language for ad hoc queries).

## ANSI-SPARC architecture

This is one way of thinking about database abstraction/separation, which, in general, makes the database easier to change and maintain by providing **logical data independence** and  **physical data independence:**

- **External level:** Views for different users (subsets and derivations of data). Described by subschemas; logically independent from conceptual level.
- **Conceptual level:** Logical structure of the entire database: all entities, attributes, relationships, and constraints. Described by conceptual schema; physically independent from internal level.
- **Internal level:** Implementation details, including storage allocation, data compression, and encryption. Described by internal schema.

Then,

- the DBMS creates **mappings** between schemas (also called intensions);
- a realization of a schema is called the extension or state of the database.


 















# Database design

## Database design lifecycle

A good design process prevents repetition; reduces errors (by limiting data entry through use of IDs, and imposing constraints); permits multiple analyses (by replacing multipart fields with atomic ones); avoids data conflicts (by reserving calculation to the analysis phase, rather than storing results); and ensures complete information (by requiring it during input). 

- __Conduct cost-benefit for proposed database__
- __Requirements analysis__: 
  - Write a mission statement and objectives;
  - Analyze current data inputs and outputs; 
  - Within the scope of the objectives, identify key actors;
  - Interview actors to understand tasks that actors execute.
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
- __Create logical design (rules and constraints)__:
  - Proceed table by table, field by field;
  - Choose naming conventions: avoid special characters and reserved words for your DBMS;
  - Choose data types;
  - Resolve many-to-many relationships by adding a junction table with the two tables’ PKs as its composite PK;
  - Apply integrity constraints:
      - With a lookup table; 
      - With a referential integrity constraint to prevent orphaned records; 
      - Through a check constraint. 
  - Denote required fields;
  - Build indexes for the most commonly searched fields (PK indexed by default; indexing reduces write speed).  
- __Create physical design (software-specific instructions)__: Construct, roll out, and support.

### Conceptual design

### Logical design

### Physical design

## Top-down vs. bottom-up

### Unified Modeling Language

UML is a graphical, higher-level language that precedes relational data modeling. UML is gradually replacing the Entity-Relationship (ER) model. UML is also used for software design. [See UML graphs](https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/).

- Classes: Name, attributes, primary key/methods; analogous to relations.
- Associations: Capture relationships between objects of two classes; self-association is possible. Also note the multiplicity of associations: `1..1 is default; m..n; m..\*; 0..n; 0..\*`.
- Association classes: Add attributes to an association, e.g. “Date” and “Decision” to the association “Applied”
- Subclasses: Inherit attributes from super/parent class, but have own unique attributes and/or unique associations.  
- Superclasses are in/complete and disjoint/overlapping.
- Composition: Objects in one class ‘belong’ to objects in another class; denoted with a solid diamond on the association, default multiplicity `1..1`. No PK needed!
- Aggregation: Objects might ‘belong’ to at most one object of another class; denoted with an empty diamond on the association. PK required.

UML can be translated into relations:

- Classes become relations.
- Associations become relations containing the keys from each class; and the key of this new relation depends on the multiplicity of the involved classes. E.g. for a 1-to-many association (also written  0..1 to \*), the key comes from the ‘many’ side. Or, again depending on multiplicity, the attributes from the association can be ‘folded into’ one of the classes.
- Association classes add their attributes to the association’s relation.
- Self-associations: rename and recycle same key.
- Subclasses have three different translation procedures: 
  - Subclass relations contain superclass PK and unique attributes;
  - Subclass relations contain all superclass attributes & unique attributes;
  - One relation contains all super- and subclass attributes.
- Composition: Add PK from main class, but not as a key, just as an attribute.
- Aggregation: “, with the additional stipulation that main class’s PK can be empty.

### Normalization

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

[__Boyce Codd normal form__ (BCNF)](http://stackoverflow.com/questions/2718420/candidate-keys-from-functional-dependencies) is when, for all FDs `A→B`, A is the key. To achieve BCNF, find FDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with `A→B` violating BCNF; decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A, rest); repeat. 

__[Multivalued dependency](http://infolab.stanford.edu/~ullman/fcdb/aut07/slides/mvds.pdf)__ (MVD), `A↠B`: A multivalued dependency exists if all tuples share their A attributes; tuple v shares B attributes with t, and its remaining attributes with u; tuple w shares A attributes with u, and its remaining attributes with t. In predicate logic: `if ∀ t,u∈R | t.A = u.A then ∃ v∈R | v.A=t.A and v.B=t.B and v.rest=u.rest.` Furthermore, `∃ w∈R | w.A=t.A and w.B=u.B and w.rest=t.rest`.

- trivial MVD: `A↠B & B⊆A` or `A∪B ={ all attributes}`; e.g. `AB↠B`
- if `A→B`, then also `A↠B`
- intersection rule: `A↠B & A↠C ⇒ A↠B⋂C`
- transitive rule: `A↠B & B↠C ⇒ A↠C-B`
- a relation A is __decomposed__ into B and C if the union of B and C’s attributes contains all of A’s attributes and `B⋈C = A` (the lossless join property). 

__Fourth normal form__ (4NF) is more restrictive than BCNF. Its whole point is to separate independent information (i.e., not functionally dependent information) to achieve efficiency: B+C rather than B\*C tuples. A relation is in 4NF if, for each nontrivial MVD `A↠B`, A is the key. To test for 4NF, look at each pair of tuples `t,u` that match on A, and create the additional tuples `v,w`: are they both already in the relation? If not, MVD is not satisfied. To achieve 4NF, find FDs, MVDs and keys for R<sub>i</sub>; pick any R<sub>i</sub> with nontrivial `A↠B` violating 4NF (3) decompose into R<sub>1</sub>(A,B) and R<sub>2</sub>(A,rest); repeat.



# Database administration

## Transaction management

## Indexing

## Performance

## Security


# SOURCES

*These notes are informed by Connolly & Begg (2015), Database Systems, 6E.*

- [Intro. to Relational Databases](https://lagunita.stanford.edu/courses/DB/RDB/SelfPaced/about)
- [Relational Algebra](https://lagunita.stanford.edu/courses/DB/RA/SelfPaced/about)
- [Relational Design Theory](https://lagunita.stanford.edu/courses/DB/RD/SelfPaced/about)
- [Unified Modeling Language](https://lagunita.stanford.edu/courses/DB/UML/SelfPaced/about)
- [Relational Database Fundamentals](http://www.lynda.com/Access-tutorials/Relational-Database-Fundamentals/145932-2.html)
- [ORM is an offensive anti-pattern](http://www.yegor256.com/2014/12/01/orm-offensive-anti-pattern.html)
- [Access 2016](http://www.lynda.com/Access-tutorials/Access-2016-Essential-Training/367064-2.html)

## INBOX

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

