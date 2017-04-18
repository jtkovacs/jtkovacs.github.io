<table class="TOC"><tr><td>- [Precursors to databases](#precursors-to-databases)
- [Database approach](#database-approach)
	- [ANSI-SPARC architecture](#ansi-sparc-architecture)
- [(Generations of) data models](#(generations-of)-data-models)
	- [Object-based data models](#object-based-data-models)
	- [Record-based data models](#record-based-data-models)
		- [(1G) Hierarchical data model](#(1g)-hierarchical-data-model)
		- [(1G) Graph data model ](#(1g)-graph-data-model-)
		- [(2G) Relational data model](#(2g)-relational-data-model)
	- [Physical data models](#physical-data-models)
</td></tr></table>
*These notes are informed by Connolly & Begg (2015), Database Systems, 6E.*

# Precursors to databases

The first computerized information systems imitated hierarchical paper filing systems. File and data formats were specific to an application or language; applications were specific to a department. This arrangement led to

- **redundancy:** the same data collected and stored by multiple departments;
- **inconsistency:** redundant data that *should be* the same not updated consistently;
- **inaccessibility:** software developers were needed to write queries and integrate data across applications; no ad hoc queries or data processing.

# Database approach

A database addresses the aforementioned problems because it is **centralized** (reducing redundancy, improving consistency, enabling data integration) and **abstracted** (available as a black box to interface with many different applications; offering a language for ad hoc queries). In a database,

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

Some definitions:

- **Database** = Data + DBMS
- **Database System** = Database + Database Applications
- **Database Environment** = Hardware + Software + Data + Procedures + People

## ANSI-SPARC architecture

This is one way of thinking about database abstraction/separation, which, in general, makes the database easier to change and maintain by providing **logical data independence** and  **physical data independence:**

- **External level:** Views for different users (subsets and derivations of data). Described by subschemas; logically independent from conceptual level.
- **Conceptual level:** Logical structure of the entire database: all entities, attributes, relationships, and constraints. Described by conceptual schema; physically independent from internal level.
- **Internal level:** Implementation details, including storage allocation, data compression, and encryption. Described by internal schema.

Then,

- the DBMS creates **mappings** between schemas (also called intensions);
- a realization of a schema is called the extension or state of the database.

# (Generations of) data models

## Object-based data models
Allow specification of constraints, but not overall structure. Includes **entities** with **attributes** and **relationships,** describing the **state** of the object.

- Entity-Relationship (ER)
- Semantic
- Functional
- (3G) Object-oriented: adds **behavior** alongside state.

## Record-based data models

Can’t express constraints on the data, but express structure well.

### (1G) Hierarchical data model

Good for modeling parts-of-a-thing, which is a fairly simple relationship. A polyhierarchy (family tree) is a little more complex than a strict hierarchy (tree).

### (1G) Graph data model 

AKA networks, AKA triples. Enables explicit modeling of different kinds of relationships (Has, IsCreatedBy, etc.) as well as more relationships (not restricted to one parent). Records are also called nodes and segments; relationships are also called edges.

### (2G) Relational data model

Tables with columns, with implicit relationships via attributes.

## Physical data models

Most common: unifying model, frame memory.

    

