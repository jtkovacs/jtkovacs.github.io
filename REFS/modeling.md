

_The following notes are largely based on Steirn (1999) and Scott Page's Coursera class on [Model Thinking.](https://www.coursera.org/course/modelthinking) There's a lot of overlap between depicting a system and [implementing one;](project-management.html) between depicting a process and [improving it;](process-improvement.html) between modeling a problem and [analyzing it.](data-analysis.html)_



# Overview of modeling

Models of a process, system, or interface can have a general form (e.g. entity relationship diagram) but be executable in different notations (e.g. Chen, crow's foot). 

The representation of a system needs to include contextual metadata clarifying the date and/or version it describes. 

## Why model?

Per Scott Page, modeling:

- 


## Model typologies 

Steirn (1999) organizes models 


Types of diagrams, per Smartdraw.com (n.d.): 

- **Graphs** represent entities and relationships
    - Venn
    - Flowchart
    - Network diagram
    - Genograms
- **Charts** represent data
    - Histogram
    - Line graph
- **Schematics** represent the elements and architecture of a system
    - Circuit diagram
    - Floorplan






# Models

## Flow charts

AKA decision flow charts, logic flow charts, and logical decision flow charts. Flow charts model **decisions,** a type of process. Languages that model processes more generally can also represent decisions.

The basic elements of flow charts are available in MS Visio's language level diagrams stencil:

- **Parallellograms** for inputs
- **Diamonds** for decisions
- **Rectangles** for functions
- **Hardcopy symbol** (rectangle with wavy bottom edge) for outputs

### Nassi-Schneiderman (N-S) diagram

AKA Chapin charts, structograms, structured flowcharts. Per Nassi and Shneiderman (1973), "We propose a flowchart language whose control structure is closer to that of language amenable to **structured programming:"**

<img src="../ILLOS/N-S-diagram.png" width="250px">



## Entity-relationship diagrams

All ERDs capture the entities in a system, along with their attributes and interrelationships. Per Dybka (2014), there are many notation styles:

- **Crow's foot**
- **Martin**
- [Chen](../ILLOS/chens.png)
- [Baker](../ILLOS/bakers.png)
- [Arrow](../ILLOS/arrow.png)
- [IDEF1X](../ILLOS/idef1x.png)
- [UML](../ILLOS/UML-relationships.png)

### Bachmann/crow's foot notation

This is a notation that describes the optionality/modality/participation and cardinality/multiplicity of a relationship, so it can be used within other modeling systems. Crows-foot notation annotates relationships with the symbols:

- **Open circle** for optional participation (zero to many)
- **Bar** for mandatory participation (one to many)
- **Crow-foot** for many
- **Bar** for one

<img src="../ILLOS/crowsfoot.gif" width="350px">



## Data flow diagrams

The Gane-Sarson and Yourdon-Coad notations are slightly different, but both depict the flow of data through a system using the following elements:

- **Circles** to represent system processes that transform the data
- **Lines** to represent data flows, with descriptive labels and arrows for directionality
- **Open rectangles** to represent internal data stores
- **Rectangles** to represent external interactors

![](../ILLOS/DFD.jpg)


## Object-oriented modeling

OO models show **inheritance** as well as decisions, relationships, and processes. Per Steirn (1999), several earlier methods (Shlaer/Mellor, Rumbaugh's Object Modeling Technique (OMT), Booch) were subsumed by UML in 1997.

### Unified Modeling Language (UML)

See [notes on UML.](UML.html)

#### Use-case diagrams

#### Activity diagrams





## Value stream mapping

## Spaghetti diagram



# Prototyping interfaces




# Sources

Ambler, S. (n.d.). Agile models distilled: Potential artifacts for agile modeling. Retrieved from [http://www.agilemodeling.com/artifacts/](http://www.agilemodeling.com/artifacts/)

Ambler, S. (n.d.). UML 2 activity diagrams: An Agile introduction. Retrieved from [http://www.agilemodeling.com/artifacts/activityDiagram.htm](http://www.agilemodeling.com/artifacts/activityDiagram.htm)

Dybka, P. (2014). ERD notations in data modeling. Vertabelo Academy. Retrieved from [http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations](http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations)

Meadows, D. H., & Wright, D. (2008). _Thinking in systems: A primer._ White River Junction, Vt.: Chelsea Green Pub.

Nassi, I., & Shneiderman, B. (1973). Flowchart techniques for structured programming. _SIGPLAN Not., 8_(8), 12–26. Retrieved from [https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf](https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf)

Smartdraw.com. (n.d.). Diagrams. Retrieved from [https://www.smartdraw.com/diagrams/?exp=ste](https://www.smartdraw.com/diagrams/?exp=ste)

Stiern, K. (1999). Comparison of diagramming methods. Retrieved from [http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html](http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html)

