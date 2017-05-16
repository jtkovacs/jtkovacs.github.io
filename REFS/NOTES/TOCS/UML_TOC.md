<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/UML.html">https://jtkovacs.github.io/REFS/HTML/UML.html</a> \> 173 words </p><table class="TOC"><tr><td>- [Elements of UML](#elements-of-uml)
	- [Classes](#classes)
		- [Superclasses ](#superclasses-)
		- [Subclasses](#subclasses)
	- [Associations](#associations)
		- [Types of associations](#types-of-associations)
			- [Composition](#composition)
			- [Aggregation](#aggregation)
		- [Classes for associations](#classes-for-associations)
		- [Multiplicity of associations ](#multiplicity-of-associations-)
- [Sources](#sources)
</td></tr></table>

# Elements of UML

UML is a graphical higher-level language used for database modeling and software design; see [notes on modeling.](modeling.html)

## Classes

Analogous to relations/tables.

- Name
- Attributes
- Methods/primary key

### Superclasses 

In/complete and disjoint/overlapping.

### Subclasses

Inherit attributes from super/parent class, but have own unique attributes and/or unique associations.  



## Associations

Captures relationships between objects of two classes. Self-association is possible.

### Types of associations

#### Composition

Objects in one class ‘belong’ to objects in another class. Denoted with a solid diamond on the association. Default multiplicity `1..1`. PK not required.

#### Aggregation

Objects might ‘belong’ to, at most, one object of another class. Denoted with an empty diamond on the association. PK required.

### Classes for associations

Add attributes to an association, e.g. “Date” and “Decision” to the association “Applied”.

### Multiplicity of associations 

- `0..n` 
- `0..*`
- `1..1`
- `m..n`
- `m..*` 




# Sources

- Ambler, S. W. (2005). _The elements of UML™ 2.0 style._ Cambridge, UK: Cambridge University Press.
- [https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/](https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/)
- [Unified Modeling Language](https://lagunita.stanford.edu/courses/DB/UML/SelfPaced/about)
