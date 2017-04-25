<p id="path">https://jtkovacs.github.io/REFS/HTML/modeling.html</p><table class="TOC"><tr><td>- [Overview of modeling](#overview-of-modeling)
	- [Why model?](#why-model?)
	- [Model typologies ](#model-typologies-)
- [Models by form](#models-by-form)
	- [Flow charts](#flow-charts)
		- [Nassi-Schneiderman (N-S) diagram](#nassi-schneiderman-(n-s)-diagram)
	- [Entity-relationship diagrams](#entity-relationship-diagrams)
		- [Bachmann/crow's foot notation](#bachmann/crow's-foot-notation)
		- [Data flow diagrams](#data-flow-diagrams)
	- [Object-oriented modeling](#object-oriented-modeling)
		- [Unified Modeling Language (UML)](#unified-modeling-language-(uml))
			- [Activity diagrams](#activity-diagrams)
- [Sources](#sources)
</td></tr></table>


_The following notes are largely based on Steirn (1999) and [Scott Page's](https://vserver1.cscs.lsa.umich.edu/~spage/) Coursera class on [Model Thinking.](https://www.coursera.org/course/modelthinking)_

_Note that there's a lot of overlap between depicting a system and [implementing one;](project-management.html) between depicting a process and [improving it;](process-improvement.html) between modeling a problem and [analyzing it;](models.html) between modeling a system and [modeling a database;](databases.html#database-design) between model forms and [knowledge organization structures.](information-architecture.html#kos-by-structure)_



# Overview of modeling

Because a model is a representation of a system, the model needs to include contextual metadata clarifying the date and/or version of the system it describes.


## Why model?

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

## Model typologies 

Models can have a general form (e.g. entity relationship diagram) but be executable in different notations (e.g. Chen, crow's foot). This page organizes models by **form and notation,** following Steirn (1999), who seems very similar to Dennis et al. (2012):

- **Functional** (==flow chart?) models capture processes:
    - Use-case diagrams
    - Activity diagrams
- **Structural** (==ERD?) models capture objects, their attributes, and their interactions:
    - CRC cards
    - Class diagrams
- **Behavioral** (==object-oriented?) models capture even more detail about interactions:
    - Interaction diagrams
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
    
Models could also be grouped by the **business problems they solve** (e.g. poor quality, lack of strategic direction, etc.); as they appear in **stages of a process/lifecycle** (e.g. identifying a problem, analyzing a problem, brainstorming solutions, etc.); by **domain of origin** (models have been developed sequentially or in parallel by Taylorists, postwar Japanese manufacturers, industrial engineers, social scientists, and software developers); by **practice area** (different models may tend to be used in UX, database development, consulting, requirements management, etc.); or by **methodology** (e.g. Agile, SDLC).








# Models by form

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



### Data flow diagrams

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

#### Activity diagrams

Similar to flowcharts and data flow diagrams, since they focus on depicting a _process_ corresponding to a specific [use case](project-management.html#use-cases-&-requirements-definition-reports) or [usage scenario.](project-management.html#use-scenarios) Activity diagrams use the following elements:

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









# Sources

Ambler, S. (n.d.). Agile models distilled: Potential artifacts for agile modeling. Retrieved from [http://www.agilemodeling.com/artifacts/](http://www.agilemodeling.com/artifacts/)

Ambler, S. (n.d.). UML 2 activity diagrams: An Agile introduction. Retrieved from [http://www.agilemodeling.com/artifacts/activityDiagram.htm](http://www.agilemodeling.com/artifacts/activityDiagram.htm)

Dybka, P. (2014). ERD notations in data modeling. Vertabelo Academy. Retrieved from [http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations](http://www.vertabelo.com/blog/technical-articles/comparison-of-erd-notations)

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley. 

Meadows, D. H., & Wright, D. (2008). _Thinking in systems: A primer._ White River Junction, Vt.: Chelsea Green Pub.

Nassi, I., & Shneiderman, B. (1973). Flowchart techniques for structured programming. _SIGPLAN Not., 8_(8), 12–26. Retrieved from [https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf](https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf)

Smartdraw.com. (n.d.). Diagrams. Retrieved from [https://www.smartdraw.com/diagrams/?exp=ste](https://www.smartdraw.com/diagrams/?exp=ste)

Stiern, K. (1999). Comparison of diagramming methods. Retrieved from [http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html](http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html)

