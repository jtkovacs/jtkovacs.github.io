<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/UML.html">https://jtkovacs.github.io/REFS/HTML/UML.html</a></p><table class="TOC"><tr><td>- [Elements of UML](#elements-of-uml)
- [Sources](#sources)
</td></tr></table>

# Elements of UML

- Classes: Name, attributes, primary key/methods; analogous to relations.
- Associations: Capture relationships between objects of two classes; self-association is possible. Also note the multiplicity of associations: `1..1 is default; m..n; m..\*; 0..n; 0..\*`.
- Association classes: Add attributes to an association, e.g. “Date” and “Decision” to the association “Applied”
- Subclasses: Inherit attributes from super/parent class, but have own unique attributes and/or unique associations.  
- Superclasses are in/complete and disjoint/overlapping.
- Composition: Objects in one class ‘belong’ to objects in another class; denoted with a solid diamond on the association, default multiplicity `1..1`. No PK needed!
- Aggregation: Objects might ‘belong’ to at most one object of another class; denoted with an empty diamond on the association. PK required.

# Sources

Ambler, S. W. (2005). _The elements of UML™ 2.0 style._ Cambridge, UK: Cambridge University Press.

[https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/](https://praveenthomasln.wordpress.com/tag/class-diagrams-in-uml/)