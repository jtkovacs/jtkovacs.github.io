<p class="path"><a href="../pkb.html">pkb contents</a> \> UML | nearly 173 words | updated 05/16/2017</p><div class="TOC">- 1. [Elements of UML](#elements-of-uml)
	- 1.1. [Classes](#classes)
		- 1.1.1. [Superclasses ](#superclasses-)
		- 1.1.2. [Subclasses](#subclasses)
	- 1.2. [Associations](#associations)
		- 1.2.1. [Types of associations](#types-of-associations)
			- 1.2.1.1. [Composition](#composition)
			- 1.2.1.2. [Aggregation](#aggregation)
		- 1.2.2. [Classes for associations](#classes-for-associations)
		- 1.2.3. [Multiplicity of associations ](#multiplicity-of-associations-)
- 2. [Sources](#sources)
</div>

# 1. Elements of UML

UML is a graphical higher-level language used for database modeling and software design; see [notes on modeling.](modeling.html)

## 1.1. Classes

Analogous to relations/tables.

- Name
- Attributes
- Methods/primary key

### 1.1.1. Superclasses 

In/complete and disjoint/overlapping.

### 1.1.2. Subclasses

Inherit attributes from super/parent class, but have own unique attributes and/or unique associations.  



## 1.2. Associations

Captures relationships between objects of two classes. Self-association is possible.

### 1.2.1. Types of associations

#### 1.2.1.1. Composition

Objects in one class ‘belong’ to objects in another class. Denoted with a solid diamond on the association. Default multiplicity `1..1`. PK not required.

#### 1.2.1.2. Aggregation

Objects might ‘belong’ to, at most, one object of another class. Denoted with an empty diamond on the association. PK required.

### 1.2.2. Classes for associations

Add attributes to an association, e.g. “Date” and “Decision” to the association “Applied”.

### 1.2.3. Multiplicity of associations 

- `0..n` 
- `0..*`
- `1..1`
- `m..n`
- `m..*` 




# 2. Sources

- Ambler, S. W. (2005). _The elements of UML™ 2.0 style._ Cambridge, UK: Cambridge University Press.
- [https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/](https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/)
- [Unified Modeling Language](https://lagunita.stanford.edu/courses/DB/UML/SelfPaced/about)
