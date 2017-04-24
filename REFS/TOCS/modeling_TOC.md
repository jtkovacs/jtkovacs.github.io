<table class="TOC"><tr><td>- [Overview of modeling](#overview-of-modeling)
	- [Why model?](#why-model?)
	- [Model typologies ](#model-typologies-)
- [Models](#models)
	- [Flow charts](#flow-charts)
		- [Nassi-Schneiderman (N-S) diagram](#nassi-schneiderman-(n-s)-diagram)
	- [Entity-relationship diagrams](#entity-relationship-diagrams)
		- [Bachmann/crow's foot notation](#bachmann/crow's-foot-notation)
	- [Data flow diagrams](#data-flow-diagrams)
	- [Object-oriented modeling](#object-oriented-modeling)
		- [Unified Modeling Language (UML)](#unified-modeling-language-(uml))
			- [Use-case diagrams](#use-case-diagrams)
			- [Activity diagrams](#activity-diagrams)
	- [Value stream mapping](#value-stream-mapping)
	- [Spaghetti diagram](#spaghetti-diagram)
- [Prototyping interfaces](#prototyping-interfaces)
- [Sources](#sources)
</td></tr></table>


_The following notes are largely based on Steirn (1999) and [Scott Page's](https://vserver1.cscs.lsa.umich.edu/~spage/) Coursera class on [Model Thinking.](https://www.coursera.org/course/modelthinking)_

_Note that there's a lot of overlap between depicting a system and [implementing one;](project-management.html) between depicting a process and [improving it;](process-improvement.html) between modeling a problem and [analyzing it.](models.html)_



# Overview of modeling

Because a model is a representation of a system, the model needs to include contextual metadata clarifying the date and/or version of the system it describes.


## Why model?

Per Scott Page, modeling helps us:

- **Be an intelligent citizen of the world.** Models are everywhere, so full participation requires knowing them. They are "the new lingua franca" in nonprofits, businesses, politics, academia. 
- **Be a clearer thinker.** Models are "wrong, but useful"; people make better decisions using a formal model versus either a single model, or multiple casual models. \
    - Work through all the logical possibilities for part; relationships between parts; logic.
    - Identify the general class of outcome: equilibrium, cycle, random, complex.
    - Identify logical boundaries. "Models give us the conditions under which we can adjudicate" between ideas, e.g. contradictory folk proverbs. _When_ are "two heads better than one"? *When* do "two cooks spoil the broth"?
    - Communicate what we know very simply.
- To understand and use data---of which there is a shit ton: either a firehose or a hairball of data. But models might help us turn data into knowledge. Models are used to:
    - See patterns and understand where they come from
    - Make predictions (point or range/bounds)
    - Retrodiction: predict the past, when data is absent or to test models for prediction
    - See if something is missing, e.g. orbits makes us think that there’s a planet beyond our sight
    - Inform data collection
    - Estimate unobservable parameters & calibrate based on data
- To better decide, strategize, and design---to act!
    - Real-time decision making (e.g., the Monty Hall door selection problem)
    - Comparative statics: move from one equilibrium to another
    - Counterfactuals
    - Identify and rank levers: where do we intervene to have an impact?
    - Experimental & institutional design
- ‘Models are fertile,’ i.e., they have multiple and unexpected uses. 

Quotes from readings:
organized data = information; information in context = knowledge; aptly-applied knowledge = wisdom; “How though do we acquire general wisdom? Advocates of liberal arts education argue for broad exposure to great works of literature and to the basic ideas from multiple disciplines. I agree in principle, but I believe the great books approach to be incomplete … the information pours out of the fire hose producing ever more complexity. How do we cope? What tools do we need? We need models. Models provide formal frameworks within which to embed all of this data and information.”
“We must open dialogues between models and reality. By identifying when a model fails, we learn more about the conditions necessary for it to work … Models don’t have flaws so much as they have limited scope.”
“Three attributes of physical systems (1) simple parts (2) interacting in large numbers (3) that follow fixed rules render physical models amenable to mathematics … Systems that include people as actors– and these include ecological systems – lack the three attributes that produce regularity. The parts of these systems aren’t simple: People are sophisticated, multi-dimensional, and capable of a range of behaviors. We march to our own drummers. Further, though billions of people exist, we interact in small to moderate sized groups. Finally, we don’t follow the same fixed rules. Unlike carbon atoms, we learn. We adapt. We do crazy things.”
“You are a modeler … But typically, it is an implicit model in which the assumptions are hidden, their internal consistency is untested, their logical consequences are unknown, and their relation to data is unknown.”
“[M]odels can be the focal points of teams involving experts from many disciplines.”
“[I]n the policy sphere … models do not obviate the need for judgment. However, by revealing tradeoffs, uncertainties, and sensitivities, models can discipline the dialogue about options and make unavoidable judgments more considered.”
“Models can surprise us, make us curious, and lead to new questions. This is what I hate about exams. They only show that you can answer somebody else's question, when the most important thing is: Can you ask a new question?”
“To me, however, the most important contribution of the modeling enterprise--as distinct from any particular model, or modeling technique--is that it enforces a scientific habit of mind, which I would characterize as one of militant ignorance--an iron commitment to ‘I don't know.’ That all scientific knowledge is uncertain, contingent, subject to revision, and falsifiable in principle … Intellectuals have a solemn duty to doubt, and to teach doubt. Education, in its truest sense, is not about ‘a saleable skill set.’ It's about freedom, from inherited prejudice and argument by authority. This is the deepest contribution of the modeling enterprise.”


## Model typologies 

Models can have a general form (e.g. entity relationship diagram) but be executable in different notations (e.g. Chen, crow's foot). 

Steirn (1999) organizes models as:

Per Dennis et al. (2012):

- functional models
- structural models
- behavioral models

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

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley. 

Meadows, D. H., & Wright, D. (2008). _Thinking in systems: A primer._ White River Junction, Vt.: Chelsea Green Pub.

Nassi, I., & Shneiderman, B. (1973). Flowchart techniques for structured programming. _SIGPLAN Not., 8_(8), 12–26. Retrieved from [https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf](https://www.cs.umd.edu/hcil/members/bshneiderman/nsd/1973.pdf)

Smartdraw.com. (n.d.). Diagrams. Retrieved from [https://www.smartdraw.com/diagrams/?exp=ste](https://www.smartdraw.com/diagrams/?exp=ste)

Stiern, K. (1999). Comparison of diagramming methods. Retrieved from [http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html](http://www.umsl.edu/~sauterv/analysis/dfd/DiagrammingMethods.html)

