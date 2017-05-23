<p class="path"><a href="../pkb.html">pkb contents</a> \> interfaces | just under 993 words | updated 05/21/2017</p><div class="TOC">- &nbsp;1. [Prototyping](#prototyping)
	- &nbsp;1.1. [Types of interface prototypes](#types-of-interface-prototypes)
		- &nbsp;1.1.1. [Sketches](#sketches)
		- &nbsp;1.1.2. [Mock-ups](#mock-ups)
		- &nbsp;1.1.3. [Wireframes](#wireframes)
	- &nbsp;1.2. [Interface prototyping tools](#interface-prototyping-tools)
- &nbsp;2. [Types of interfaces](#types-of-interfaces)
	- &nbsp;2.1. [Reporting dashboards](#reporting-dashboards)
	- &nbsp;2.2. [Interactive interfaces](#interactive-interfaces)
		- &nbsp;2.2.1. [Forms](#forms)
			- &nbsp;2.2.1.1. [Software for forms](#software-for-forms)
			- &nbsp;2.2.1.2. [Requirements and validation](#requirements-and-validation)
			- &nbsp;2.2.1.3. [General best practices](#general-best-practices)
			- &nbsp;2.2.1.4. [Best practices by element](#best-practices-by-element)
				- &nbsp;2.2.1.4.1. [Layout](#layout)
				- &nbsp;2.2.1.4.2. [Input Affordances ](#input-affordances-)
				- &nbsp;2.2.1.4.3. [Actions ](#actions-)
				- &nbsp;2.2.1.4.4. [Help & tips ](#help-tips-)
				- &nbsp;2.2.1.4.5. [Path to completion](#path-to-completion)
				- &nbsp;2.2.1.4.6. [Progressive disclosure ](#progressive-disclosure-)
				- &nbsp;2.2.1.4.7. [Inline validation](#inline-validation)
				- &nbsp;2.2.1.4.8. [Error messages](#error-messages)
				- &nbsp;2.2.1.4.9. [Progress indicators](#progress-indicators)
		- &nbsp;2.2.2. [Multimedia](#multimedia)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>

# 1. Prototyping

Prototyping is the practice of making a simple, quick, cheap, etc. versions of a future product, and getting user input on those versions before moving on to production. 

## 1.1. Types of interface prototypes

Per Ambler, n.d. and my friend Clint:

<table>
<tr><th>Term</th><th>Alt Term</th><th>Definition</th></tr>
<tr><td>Sketch</td><td>Essential UI</td><td>Conceptual model of UI</td></tr>
<tr><td rowspan="2">Mock-up</td><td>Sketch</td><td>Manual rendering of a screen's appearance</td></tr>
<tr><td>Concrete prototype</td><td>Digital rendering of a screen's appearance</td></tr>
<tr><td colspan="2">Wireframe</td><td>Shows how screens interrelate</td></tr>
</table>

### 1.1.1. Sketches

- [http://www.agilemodeling.com/artifacts/essentialUI.htm](http://www.agilemodeling.com/artifacts/essentialUI.htm)

### 1.1.2. Mock-ups

- [http://agilemodeling.com/artifacts/uiPrototype.htm](http://agilemodeling.com/artifacts/uiPrototype.htm)

### 1.1.3. Wireframes

## 1.2. Interface prototyping tools

- [http://uxmag.com/articles/bringing-relevant-content-into-your-designs](http://uxmag.com/articles/bringing-relevant-content-into-your-designs)
- [https://www.cooper.com/prototyping-tools](https://www.cooper.com/prototyping-tools)








# 2. Types of interfaces

## 2.1. Reporting dashboards

A summary of best practies from Eckerson and Hammond (2011):

- Focus on:
    - User needs
    - Actions! not views
        - Actions that require data
        - Actions that data could suggest
    - Data quality
- Methods and workflow:
    - Get user feedback on prototypes
    - Plan to interate continuously
        - E.g., add more complexity as users become fluent
    - Create and use templates (for designer-helpful efficiency and user-friendly consistency)
- Design principles:
    - Group related elements, maybe using tabs
    - Balance visual sparsity and information density, both desirable
    - "Ideally, users should be able to view all pertinent data at a glance without clicking. Then, they should be able to view details of any top-level metric in three clicks or fewer."
    - Keep data, not decorative elements, at the forefront

[http://uxmag.com/articles/bringing-relevant-content-into-your-designs](http://uxmag.com/articles/bringing-relevant-content-into-your-designs)
    
    
    

## 2.2. Interactive interfaces

### 2.2.1. Forms

Per Wroblewski (n.d.), forms are used in a variety of scenarios both on- and offline:

- Shop, conduct transactions
- Log in, gain access
- Input data, give feedback

#### 2.2.1.1. Software for forms

- http://www.wufoo.com
- http://www.formassembly.com
- http://www.icebrrg.com

#### 2.2.1.2. Requirements and validation

- **Usability Testing:** Errors, issues, assists, completion rates, time spent 
per task, satisfaction scores
- **Field testing:** Sources used, environment, context
- **Customer Support:** Top problems, number of incidents
- **Web Conventions Survey:** Common solutions, unique approaches
- **Site Tracking:** Completion rates, entry points, exit points, elements utilized, data entered 
- **Eye Tracking:** Number of eye fixations, length of fixations, heat maps, scan paths 

#### 2.2.1.3. General best practices

- Minimize input with smart defaults, inline validation, forgiving inputs
- Provide a progress indicator
- Provide a consistent voice across pages of a form
- Indicate errors, available help, reasons for requesting data, success

#### 2.2.1.4. Best practices by element

##### 2.2.1.4.1. Layout

**Label positions:**

- Label above field: fastest completion times but may be harder to associate label with appropriate field; use if the form represents a familiar task and if _vertical space_ isn't an issue
- Label to left of field: better for associating labels with appropriate fields, but increases (as much as doubles!) form completion time
    - Right-aligned: Minimizes vertical space and distance the eye must move, but jagged left edge is harder to process
    - Left-aligned: Most time-consuming but labels are easily read
    
**Content groupings** should be the minimum necessary to chunk up the form into digestible subtasks. Too many content grouping introduces visual clutter.

##### 2.2.1.4.2. Input Affordances 

Per Norman (2013), an object has attributes; a person has capabilities; when a person's capabilities combine with an object's attributes, this is an affordance and we can say that the object affords action X. For example, a rock is hard; many people can move their arms and grip with their hands; therefore, a rock affords hitting something and causing damage. More coloquially, in web design an interface element that evokes and invites interaction from users.

- Based on the total number of fields and their relative incidence, choose to mark either **required or optional** fields (but not both) 
- **Field lengths** should be right-sized for their content (an affordance), but fairly consistent across a form (not wildly varying lengths)
- **Input formats** should be flexible

##### 2.2.1.4.3. Actions 

- Formatting should make it clear which actions (initiated by buttons) are **primary** (success cases) and which are secondary, e.g. by aligning the primary action with the input fields.
- Many people expect to be able to tab through forms; expectations about tab behavior for multicolumn forms vary. HTML formatting can control tab order with the `tabindex` attribute. 

##### 2.2.1.4.4. Help & tips 

Provide help and tips as short explanatory text; linked pages; automatic inline exposure; or user-activated exposure (inline, dialog, or section).

##### 2.2.1.4.5. Path to completion

There should be a visually clear path to form completion, guiding the user through data input.

##### 2.2.1.4.6. Progressive disclosure 

Questions or options may be exposed progressively, depending on users' selections.

##### 2.2.1.4.7. Inline validation

Offer valid options as users type; show #words remaining. 

##### 2.2.1.4.8. Error messages

When input is rejected, make error messages clear, prominent, visibly associated with the erroneous fields, and visibly linked to corrective actions. Don't autocorrect errors.

##### 2.2.1.4.9. Progress indicators

Show a user's progress towards form completion as well as a status indicator when a system operation is in progress (e.g., uploading an attachment) or successful (e.g., submitting the form). Disable the submit button after 1 click.

### 2.2.2. Multimedia









# 3. Sources

## 3.1. Cited

Ambler, S. (n.d.). User interface (UI) prototypes: An Agile introduction. (n.d.). Retrieved from [http://agilemodeling.com/artifacts/uiPrototype.htm](http://agilemodeling.com/artifacts/uiPrototype.htm)

Eckerson, W., & Hammond, M. (2011). _Visual reporting and analysis._ TDWI Best Practices Report. Retrieved from [http://www.smartanalytics.com.au/pdf/Advizor-TDWI_VisualReportingandAnalysisReport.pdf](http://www.smartanalytics.com.au/pdf/Advizor-TDWI_VisualReportingandAnalysisReport.pdf)

Norman, D. (2013). _The design of everyday things._ New York City, NY: Basic Books.

Wroblewski, L. (n.d.). Best practices for form design [presentation slides]. 

## 3.2. References

- [Questionnaire bank for usability research](http://www.usabilitynet.org/tools/r_questionnaire.htm)
- [User Experience Questionnaire](http://www.ueq-online.org/)
- [Usability.gov](https://www.usability.gov/)
- [Colorgorical palette generator](http://vrl.cs.brown.edu/color)
- [HTML color codes, pickers, etc.](http://htmlcolorcodes.com/)
- [Font Pair](http://fontpair.co/)

## 3.3. Read

- [Coursera - Design Principles](https://www.coursera.org/learn/design-principles)
- [Coursera - Graphic Design](https://www.coursera.org/learn/fundamentals-of-graphic-design)

## 3.4. Unread

- [7 Rules for Creating Gorgeous UI](https://medium.com/@erikdkennedy/7-rules-for-creating-gorgeous-ui-part-1-559d4e805cda)
- [Graphic Design tutorial](http://www.afterhoursprogramming.com/tutorial/Graphic-Design/Introduction/)
- [Usability tutorial](http://www.afterhoursprogramming.com/tutorial/Usability/Introduction/)
- [Design for programmers](https://blog.prototypr.io/design-for-programmers-d38c56982cd0#.cx4hjk2o1)
- [In defense of eye candy](http://alistapart.com/article/indefenseofeyecandy)
- [System Usability Scale](https://www.usability.gov/how-to-and-tools/methods/system-usability-scale.html)
- [Buttrick's practical typography](http://practicaltypography.com/index.html#toc)
- [A short introduction to graphic design history](http://www.designhistory.org/index.html)
- [Users’ Computer Skills: Worse Than You Think](https://www.nngroup.com/articles/computer-skill-levels/)
- [Dark Patterns: fighting user deception worldwide](http://darkpatterns.org/)
- Eyal, N. _Hooked: How to Build Habit-Forming Products_.
- Weinschenk, S. _100 Things Every Designer Needs to Know About People_.