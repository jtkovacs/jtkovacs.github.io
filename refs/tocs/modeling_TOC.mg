<p class="path"><a href="../pkb.html">pkb contents</a> \> modeling | just under 1650 words | updated 05/19/2017</p><div class="TOC">- 1. [Overview of modeling](#overview-of-modeling)
	- 1.1. [Why model?](#why-model)
	- 1.2. [Model typologies](#model-typologies)
- 2. [Models by form and notation](#models-by-form-and-notation)
	- 2.1. [Flow charts](#flow-charts)
		- 2.1.1. [Nassi-Schneiderman (N-S) diagram](#nassi-schneiderman-n-s-diagram)
	- 2.2. [Entity-relationship diagrams](#entity-relationship-diagrams)
		- 2.2.1. [ERDs for databases](#erds-for-databases)
			- 2.2.1.1. [Bachmann/crow's foot notation](#bachmanncrows-foot-notation)
			- 2.2.1.2. [UML notation](#uml-notation)
		- 2.2.2. [Data flow diagrams](#data-flow-diagrams)
		- 2.2.3. [Use case diagrams](#use-case-diagrams)
	- 2.3. [Object-oriented modeling](#object-oriented-modeling)
		- 2.3.1. [Object Modeling Technique](#object-modeling-technique)
		- 2.3.2. [Activity diagrams](#activity-diagrams)
- 3. [Sources](#sources)
	- 3.1. [Cited](#cited)
	- 3.2. [References](#references)
	- 3.3. [Read](#read)
	- 3.4. [Unread](#unread)
</div>


_The following notes are largely based on Steirn (1999) and [Scott Page's](https://vserver1.cscs.lsa.umich.edu/~spage/) Coursera class on [Model Thinking.](https://www.coursera.org/course/modelthinking)_

_Note that there's a lot of overlap between depicting a system and [implementing one;](project-management.html) between depicting a process and [improving it;](process-improvement.html) between modeling a problem and [analyzing it;](models.html) between modeling a system and [modeling a database;](databases.html#database-design) between model forms and [knowledge organization structures.](information-architecture.html#kos-by-structure)_



# 1. Overview of modeling

Because a model is a representation of a system, the model needs to include contextual metadata clarifying the date and/or version of the system it describes.


## 1.1. Why model?

Per Scott Page, modeling helps us:

- **Be an intelligent citizen of the world.** Models are everywhere, so full participation requires knowing them. They are "the new lingua franca" in nonprofits, businesses, politics, academia. 
- **Be a clearer thinker.** Models are "wrong, but useful"; people make better decisions using a formal model versus either a single model, or multiple casual models. “You are a modeler … But typically, it is an implicit model in which the assumptions are hidden, their internal consistency is untested, their logical consequences are unknown, and their relation to data is unknown.”
    - **Work through all the logical possibilities** for parts; relationships between parts; logic
    - **Identify the general class of outcome:** equilibrium, cycle, random, complex
    - **Identify logical bounds:** "Models give us the conditions under which we can adjudicate" between ideas, e.g. contradictory folk proverbs. _When_ are "two heads better than one"? *When* do "two cooks spoil the broth"?
    - **Reduce complexity.**
- **Understand and use data,** turning it into knowledge.
    - **See patterns** and understand where they come from
    - **Make predictions** (point or range/bounds)
    - **Make retrodictions** (predict the past, when data is absent or when testing predictive models)
    - **See if something is missing,** e.g. orbits makes us think that there’s a planet beyond our sight
    - **Strategize data collection**
    - **Estimate unobservable parameters** & calibrate based on data
- **Better decide, strategize, design, and act.**
    - **Make decisions** (e.g., the Monty Hall door selection problem)
    - **Consider counterfactuals**
    - **Identify and rank levers:** where do we intervene to have an impact?
    - **Design experiments and institutions**
- **Communicate what we know very simply.** “[M]odels can be the focal points of teams involving experts from many disciplines”
- **Discover new things:** "Models are fertile", i.e., they have multiple and unexpected uses. “Models can surprise us, make us curious, and lead to new questions. This is what I hate about exams. They only show that you can answer somebody else's question, when the most important thing is: Can you ask a new question?”

## 1.2. Model typologies

Models can have a general form (e.g. entity relationship diagram) somewhat corresponding to [information structures,](information-architecture.html#information-structures) but be executable in different notations (e.g. Chen, crow's foot). This page organizes models by **form and notation,** following Steirn (1999), who seems very similar to Dennis et al. (2012):

- **Functional** (==flow chart?) models capture processes:
    - Use-case diagrams
    - Activity diagrams
- **Structural** (==ERD?) models capture objects, their attributes, and their interactions:
    - CRC cards
    - Class diagrams
- **Behavioral** (==object-oriented?) models capture even more detail about interactions:
    - Interaction diagrams
        - Sequence diagrams
    - Behavioral state machines
    - Crude analysis

Smartdraw.com (n.d.): 

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
    
Models could also be grouped by the **business problems they solve** (e.g. poor quality, lack of strategic direction, etc.); as they appear in **stages of a process/lifecycle** (e.g. identifying a problem, analyzing a problem, brainstorming solutions, etc.); by **domain of origin** (models have been developed sequentially or in parallel by Taylorists, postwar Japanese manufacturers, industrial engineers, social scientists, and software developers); by **practice area** (different models may tend to be used in UX, database development, consulting, requirements management, etc.); by **methodology** (e.g. Agile, SDLC); or by **use as artifacts in the design and analysis phases: **

![](../illos/models-by-analysis-vs-design.jpeg)






# 2. Models by form and notation

## 2.1. Flow charts

AKA decision flow charts, logic flow charts, and logical decision flow charts. Flow charts model **decisions,** a type of process. Languages that model processes more generally can also represent decisions.

The basic elements of flow charts are available in MS Visio's language level diagrams stencil:

- **Parallellograms** for inputs
- **Diamonds** for decisions
- **Rectangles** for functions
- **Hardcopy symbol** (rectangle with wavy bottom edge) for outputs

### 2.1.1. Nassi-Schneiderman (N-S) diagram

AKA Chapin charts, structograms, structured flowcharts. Per Nassi and Shneiderman (1973), "We propose a flowchart language whose control structure is closer to that of language amenable to **structured programming:"**

<img src="../ILLOS/N-S-diagram.png" width="250px">



## 2.2. Entity-relationship diagrams

All ERDs capture the entities in a system, along with their attributes and interrelationships; enhanced ERDs include superclasses and subclasses. 

### 2.2.1. ERDs for databases

Per Dybka (2014), there are many notation styles:

- **Crow's foot**
- **Martin**
- **UML**
- [Chen](../ILLOS/chens.png)
- [Baker](../ILLOS/bakers.png)
- [Arrow](../ILLOS/arrow.png)
- [IDEF1X](../ILLOS/idef1x.png)

#### 2.2.1.1. Bachmann/crow's foot notation

This is a notation that describes the optionality/modality/participation and cardinality/multiplicity of a relationship, so it can be used within other modeling systems. Crows-foot notation annotates relationships with the symbols:

- **Open circle** for optional participation (zero to many)
- **Bar** for mandatory participation (one to many)
- **Crow-foot** for many
- **Bar** for one

Entity A is on the left, entity B is on the right. They are connected with an annotated line. Annotations on the right side of the line describe how A relates to B: for a single row in A, how many rows minimum and how many rows maximum could appear in B? Annotations on the left side of the line describe how B relates to A: for a single row in B, how many rows could appear in A?

<img src="../ILLOS/crowsfoot.gif" width="350px" align="left">

<img src="../ILLOS/EERD.png" width="280px" style="padding-bottom:60px;">

#### 2.2.1.2. UML notation

Predates ER notation, but increasingly popular as a database modeling language; see [notes on UML.](UML.html)

<img src="../ILLOS/UML-EERD.png" width="450px">

### 2.2.2. Data flow diagrams

Per Le Vie and Donald (2000), "Data flow diagrams have replaced flowcharts and pseudocode as the tool of choice for showing program design" --- at least in the early stages of system design --- because they show data along with program functions that transform the data. DFDs are highly compatible with object-oriented programming and design. Gane-Sarson and Yourdon-Coad notations are slightly different, but both use the following elements:

- **Rectangles** to represent external interactors AKA agents, terminators, sources, sinks
- **Lines** to represent data flows, annotated with descriptive labels and arrows for directionality
- **Circles** to represent system processes (named with descriptive verbs) that transform the data
- **Open rectangles** to represent internal data stores

![](../illos/DFD.jpg)

DFDs are created for different levels of the system, starting with the **context diagram** (the most general view), proceeding to **level 0 diagrams** and **level 1 diagrams.** Per Le Vie and Donald (2000), only certain data flows (usually!) are valid:

- Between a process and an entity (in either direction)
- Between a process and a data store (in either direction)
- Between two processes that can only run simultaneously

### 2.2.3. Use case diagrams

UML use case diagrams are used to organize [use cases.](project-management.html#use-cases) The basic elements:

- **Ovals** for use cases
    - **Shaded black** for misuse cases
- **Lines** for relationships; may be annotated
    - \<\<include\>\> (routinely shared functionality)
    - \<\<extend\>\> (exceptional scenario)

<img src="../ILLOS/use-case-diagram.gif" width="350px"/>



## 2.3. Object-oriented modeling

OO models show **inheritance** as well as decisions, relationships, and processes. Per Steirn (1999), several earlier methods (Shlaer/Mellor, Rumbaugh's Object Modeling Technique (OMT), Booch) were subsumed by UML in 1997. 

### 2.3.1. Object Modeling Technique

Per La Vie and Donald (2000), OMT produces three views of a system: "The _Object Model_ describes the static system components and is modeled using object diagrams. The _Dynamic Model_ describes the dynamic system components that change over time and are modeled using state diagrams. The _Functional Model_ describes operations performed on data in a system
and uses data flow diagrams."

### 2.3.2. Activity diagrams

Similar to flowcharts and data flow diagrams, since they focus on depicting a _process_ corresponding to a specific [use case](project-management.html#use-cases-&-requirements-definition-reports) or [usage scenario.](project-management.html#use-scenarios) Activity diagrams use the following UML elements:

- **Rounded rectangle** to indicate activities
- **Rectangle** to capture explanatory notes
    - **Dotted line** to connect notes to relevant entities
- **Oval** to indicate that a use case is being covered
    - **Rake** annotating an activity, to indicate it's described by its own activity diagram
- **Lines** for flows
    - **Black bar** for forks and joins (to capture parallel processes: AND)
    - **Diamonds** for conditional branching and merging (OR)
        - **Bracketed text annotation** of a flow to denote a logical condition that must be satisfied 
    - **Solid circle** to indicate the starting node
    - **Solid circle with halo** to indicate terminal node/s   
    - **Halo around X** to indicate unsuccessful end of process
- **Swimlanes** to capture which actor performs the activity

<img src="../ILLOS/activity-diagram.jpg" width="580px"/>









# 3. Sources

## 3.1. Cited

Ambler, S. (n.d.). Agile models distilled: Potential artifacts for agile modeling. Retrieved from [http://www.agilemodeling.com/artifacts/](http://www.agilemodeling.com/artifacts/)

Ambler, S. (n.d.). UML 2 activity diagrams: An Agile introduction. Retrieved from [http://www.agilemodeling.com/artifacts/activityDiagram.htm](http://www.agilemodeling.com/artifacts/activityDiagram.htm)

Dybka, P. (2014). ERD notations in data modeling. Vertabelo Academy. Retrieved from [http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations](http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations)

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley. 

Le Vie, D. S., & Donald, S. (2000). Understanding data flow diagrams. In _Annual Conference - Society for Technical Communication,_ 47, pp. 396–401.

Meadows, D. H., & Wright, D. (2008). _Thinking in systems: A primer._ White River Junction, Vt.: Chelsea Green Pub.

Nassi, I., & Shneiderman, B. (1973). Flowchart techniques for structured programming. _SIGPLAN Not., 8_(8), 12–26. Retrieved from [https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf](https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf)

Smartdraw.com. (n.d.). Diagrams. Retrieved from [https://www.smartdraw.com/diagrams/?exp=ste](https://www.smartdraw.com/diagrams/?exp=ste)

Stiern, K. (1999). Comparison of diagramming methods. Retrieved from [http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html](http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html)

## 3.2. References

- [http://creately.com/blog/diagrams/uml-diagram-types-examples/](http://creately.com/blog/diagrams/uml-diagram-types-examples/)

## 3.3. Read

## 3.4. Unread
