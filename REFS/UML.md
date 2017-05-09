
# Elements of UML

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

### Association types

#### Composition

Objects in one class ‘belong’ to objects in another class. Denoted with a solid diamond on the association. Default multiplicity `1..1`, no PK needed.

#### Aggregation

Objects might ‘belong’ to at most one object of another class; denoted with an empty diamond on the association. PK required.

### Multiplicity of associations 

- `1..1`
- `m..n`
- `m..*` 
- `0..n` 
- `0..*`

### Association classes

Add attributes to an association, e.g. “Date” and “Decision” to the association “Applied”.




# Sources

Ambler, S. W. (2005). _The elements of UML™ 2.0 style._ Cambridge, UK: Cambridge University Press.

[https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/](https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/)