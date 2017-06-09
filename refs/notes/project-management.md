# What is project management?

## Overview of PM methodologies

Project Life Cycle (PLC) per Watt (2014):

1. Initiation
2. Planning
3. Implementation/Execution
4. Closing

Systems Development Lifecycle (SDLC) per Annabi and McGann (2014), with my additions bracketed:

1. **Planning:** defining scope, objectives/charter, budget, schedule, etc.
2. **Analysis:** characterizing and understanding the system as-is; producing requirements specifications
3. **Design:** producing IT-focused mock-ups, blueprints etc. of system to-be
4. **Development:** building software/hardware
5. **Implementation:** when users encounter the built system
6. [Monitoring and maintaining]
7. [Improving]

Others:

- [Agile](https://hbr.org/video/4846148015001/a-quick-introduction-to-agile-management)
- [MITRE systems engineering lifecycle](https://www.mitre.org/publications/systems-engineering-guide/se-lifecycle-building-blocks)

## Common pitfalls & best practices

Per Bloch, Blumberg, and Laartz (n.d.), IT projects often suffer major delays and budget overruns. Best practices to avoid or limit these unwelcome outcomes:

- Focus on strategy and stakeholders, not exclusively budget and scheduling
- Ensure talent is sufficient to execute the project
- Align team incentives with project incentives and have adequate team infrastructure
- Have excellent project management, including short delivery cycles and quality checks

Also see [why not use an IS?](information-systems.html#why-not-use-is)


# Initiating a project

## Strategic assessment

PESTEL, Porter's five, and SWOT/SLOT analyses are more common in the context of organizational strategic planning, but they can also be scoped to evaluate the desirability and feasibility of projects. Per Ross and Weill (2012), there are six strategic decisions that must be made at the outset of a project, but shouldn't be made by IT people:

![](illos/eis-strategy.png)

### PESTEL analysis

Systematic review of the broadest trends and forces that constitute the business environment, to identify the implications for organizational strategy (since projects should be related to an organization's strategic goals):

- **Political:** trade policy, international relations, fiscal policy, electoral cycle, tax policy
- **Economic:** unemployment, disposable income, exchange rates, interest rates, trade tariffs, inflation, taxation 
- **Social:** demographics, ethics, consumer attitudes, media
- **Technological:** maturity of various technologies, trends
- **Environmental:** ecological impacts of operations, consumer attitudes
- **Legal:** patents & licensing, employment law, consumer protections, industry-specific regulations, environmental protections, competitive regulations

### Porter's five forces analysis

Framework for evaluating the intensity of competition in a specific market or industry, which may have implications for whether a project is worth undertaking or may point to profitable niches:

- Bargaining power of **consumers**
- Bargaining power of **suppliers**
- Threat of **established competitors**
- Threat of **new entrants**
- Threat of **product substitutes**

### Risk analysis



#### POET analysis

#### SWOT/SLOT analysis

Framework for making connections between a company's external landscape and internal characteristics (which can be restricted to the scope of a single project). Data is collected and sorted into a matrix, with one matrix for each alternative under consideration:

- Internal **strengths**
- Internal **weaknesses** or liabilities
- External **opportunities**
- External **threats**

#### Risk matrix



### Gap analysis

Also called need-gap analysis, need analysis, or need assessment. Gap analysis is a way of ensuring that planned actions align with objectives and present a reasonable pathway from the current reality to the desired state. (The 5 whys or fishbone/Ishikawa/cause-and-effect diagrams may be useful in analyzing the current reality to identify possible actions; see [notes on process improvement.)](#process-improvement.html)

| Objective | Reality | Action |
| --- | --- | --- |
| 12 widgets daily | 2 widgets | Hire more workers |

### Stakeholder analysis

The general aim of stakeholder analysis is to identify stakeholders; analyze their interests and expectations; categorize interests and expectations based on importance and level of stakeholder influence; and develop an action plan that delimits roles for different stakeholders. Stakeholder analysis is important for managing the scope, influence and interorganizational politics of a project, as well as ensuring that projects address all relevant needs (including social equity goals).

Different authors present different stakeholder typologies. Per Leffingwell (2010):

- **Users** are stakeholders
- **System stakeholders** are those who:
    - Will use the system
    - Will work with those who use the system
    - Will be impacted by the deployment and operation of a system
- **Project stakeholders** are those who:
    - Have a vested interest in the project's budget and schedule
    - Will be involved in marketing, selling, installing, or maintaining the system

Two typologies per Rabinowitz (n.d.):

- **Primary** stakeholders use a system directly 
- **Secondary** stakeholders have only indirect contact
- **Key** stakeholders have decision-making authority

<table>
<tr><th></th><th>Low interest</th><th>High interest</th></tr>
<tr><th>High influence</th><td>Latents</td><td>Promoters</td></tr>
<tr><th>Low influence</th><td>Apathetics</td><td>Defenders</td></tr>
</table>

#### RACI plan
    
Once identified, decisions must be made about levels of stakeholder involvement. A RACI plan can capture stakeholder roles as well as roles for those involved in executing the project. Per Kantor (2012):

1. Identify all the tasks involved in delivering the project and list them on the left-hand side of the chart in completion order.
2. Identify all the project stakeholders and list them along the top of the chart.
3. Complete the cells of the model identifying
    a. who has **responsibility (R)** and  **accountability (A),** and 
    b. who will be **consulted (C)** and **informed (I)** for each task [(see: Communications plan)](#communications-plan).
4. Validate and, if needed, amend cells:
    a. Ensure every task has at least one R, but no more than needed to accomplish the work.
    b. Ensure every task has one A, and no more.
    c. Ensure that all participation levels are the minimum necessary, e.g. downgrade from C to I where possible.
    d. Ensure that stakeholders accept their roles.
  
### Force field analysis

Facilitates organizational change by enumerating the forces that help or hinder an organization's ability to make change (note that individual people may constitute a force).

![Example force field analysis](https://www.odi.org/sites/odi.org.uk/files/odi-assets/embedded-images/Forcefield.gif)

## Writing a business case or proposal

Overall, a business case must clearly outline a problem and a solution. If it's a proposal (meaning you must convince someone to hire you), you also need to demonstrate your credibility and capacity to deliver the solution.

Per Tom Sant as summarized by Obuchowski (2015):

<table>
<tr><th>Problem with business proposal</th><th>Remedy</th></tr>
<tr><td style="text-align:left; width:420px;">Failure to focus on the client’s business problems and payoffs; the content sounds generic.</td>
<td style="width:160px;" rowspan=3>**Research the client**</td></tr>
<tr><td style="text-align:left;">No clear differentiation of this customer compared with other customers.</td></tr>
<tr><td style="text-align:left;">Failure to offer a compelling value proposition and clear solution.</td></tr>
<tr><td style="text-align:left;">No persuasive structure --- the proposal is an "information dump".</td>
<td rowspan=3>**Use structuring devices and simple language**</td></tr>
<tr><td style="text-align:left;">Key points are difficult to read because they’re full of jargon, too long, or too technical.</td></tr>
<tr><td style="text-align:left;">Key points are buried --- no punch, no highlighting.</td></tr>
<tr><td style="text-align:left;">Credibility killers --- misspellings, grammar and punctuation errors, use of the wrong client’s name, inconsistent formatting, and similar mistakes.</td>
<td>**Proofread**</td></tr>
</table>

### Writing an executive summary

Per Clayton (2003):

- An executive summary is not a summary; it's an articulation of the business case.
- Can't just echo the RFP, because readers of the full RFP and the executive summary differ.
- Beyond other respondents, you're competing against inertia (since the client may ultimately do nothing).
- Describe your solution in terms of business outcomes; don't get into the technical details.

## Writing a project charter
    
- Project Charter
- Project Initiation Document (PID)
- Project Mandate

### Vision & success criteria

Per Hill & Cantera (2015): 

- Establish a simple definition for "business process" that everyone understands. Adopt Gartner's definition as a starting point.
    - Management process: highest level of abstraction; processes centered on mission statement and long-term vision
    - Administrative process: maintaining a functioning organization
    - Operational process: day-to-day operations
- Assess proposed changes to business processes in terms of the probability of the change directly impacting the desired business outcome. A "good" change is one that improves enterprise business outcomes (not just functional unit outcomes), or that must be made for compliance reasons. Our 2014 study of business transformation initiatives shows that one-third of organizations have an insufficient understanding of their business strategy, and 35% fail to translate the business strategy into measurable business goals.
- Work backwards from the business outcome using 5 whys, Fishbone diagram, or customer journey mapping.
- A Level 0 process diagram is a simple way of communicating how the organization works. It is the highest representation of the enterprise's business operations from a process perspective ... In our view, every organization would benefit from having such a visual to facilitate communications about improving the outcomes from business operations. Such a visual should fit on a single piece of paper.
- Identify key processes and pair them with metrics. (Metrics can be of the form 'from X to Y' but should be outside-in; e.g.,"from purchase request to receipt".)
    - How do we make our product or service?
    - How do our customers receive/experience the value of our product or service?
    - How do we collect money for our product or service?
    - How do we support (provide customer service for) our product or service?
    - How do we source the raw materials or talent we need to create our product or service?
- Look at the process as-is and try to simplify it, rather than leaping to IT automation as the solution. "Automation is very good for scaling work (with speed and capacity) without a commensurate increase in head count, for lowering the cost of performing the work (since, theoretically, machines can work 24/7) and for increasing the consistency of the output. If these are the kinds of improvements desired, then automation is an appropriate answer."

### Defining & managing scope

Per Sheen (2015), scope creep is pervasive. Scope should be clearly addressed during the project initiation phase by (1) listing what's in and out of scope, provided stakeholders agree about scope; or (2) establishing scope ranges AKA scope tolerance parameters, which can be pinpointed as information emerges. A task is out of scope if it (1) doesn't make a direct contribution to the project goal, or (2) if time and money are binding constraints. **Project the impact of requested additional tasks;** never simply agree to perform them.



# Planning a project

## Agile methodologies

In the traditional "serial" or lifecycle project management approach, requirements are translated into deliverables, deliverables are translated into a work breakdown structure (WBS), and the WBS is translated into a schedule and budget. Per Ambler (1999), about two-thirds of requirements elicited in this way lead to features that are never or rarely used, i.e. "spectacular levels of waste". In response, Agile tries to match development processes to the realities of constantly shifting requirements using:

- ... in place of a schedule, a **stack** of prioritized requirements with detailed modeling done 'just in time';
- ... in place of a budget, funding is continuously adjusted in response to the **value** delivered by products.

## Lifecycle methodologies

### Communications plan

Per Collella (2009), effective organizational communication requires a **communications strategy,** which includes (1) a core message that is not burdened with IT jargon, (2) the capacity to refine messages in response to stakeholder cues, and (3) assessment; a **communications plan** for institutionalizing and executing the strategy; and **communication delivery skills.**

Per PMI (2013):
 
- Be able to sell people on the strategic value of communication
- Know who you need to talk to, and how much [(see: RACI plan)](#raci-plan)
- Plan should specify modes of communication; adjust to people's habits where possible

### Work breakdown structure

Per Wikipedia (2017), a work breakdown structure (WBS) is a **hierarchical decomposition of a project's total work.** WBS elements are coded as 1.0, 1.1, 1.10.11, etc. Child elements must sum to 100% of their parent element, and so on until 100% of the project's total work is accounted for. Elements must be mutually exclusive, which is easier to accomplish if elements are _outcomes,_ not tasks. There are different heuristics for establishing the terminal granularity of a WBS:

- 80 hour rule: smallest element must not exceed 80 hours of work
- Smallest element must be small enough to occur within the standard reporting period

Once the hierarchy is established, terminal elements are budgeted and scheduled.

### Budgeting

### Scheduling

- Timeline
- Critical path: Least # of tasks to complete a goal 
- Gantt chart
- Crash
- Gate
- Milestone
- PERT chart

### Monitoring & reporting

- CARDI Log (Constraints/Assumptions/Risks/Dependencies/Issues)
- RAG Status
- Project Dashboard




# Analyzing, designing & specifying systems

## Requirements determination

Designs must emerge from in-depth analysis of [stakeholder](#stakeholder-analysis) (not just user) needs; requirements determination is the process of eliciting, analyzing, and synthesizing stakeholder needs so they can influence system design. Dennis et al. (2012) note that the analysis and design phases of a system implementation effort are very closely linked. That is, the product/s of requirements determination are "initial designs". 

### Types of requirements

Per Dennis et al. (2012), requirements are expressed first as **business requirements** (from the perspective of stakeholders, including users), second as **system requirements** (from the perspective of developers). Requirements are also categorized as **functional** (what business tasks a system must perform) and **nonfunctional** (operational, performance, security, cultural and political requirements that affect how tasks are performed, and may arise from regulations such as Sarbanes-Oxley or the desire to comply with standards such as [COBIT,](https://www.isaca.org/COBIT/Pages/default.aspx) [ISO 9000,](https://www.iso.org/iso-9001-quality-management.html) and the [Capability Maturity Model).](https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=6759) 

Per [StackExchange answers,](https://softwareengineering.stackexchange.com/questions/82763/why-bother-differentiating-between-functional-and-nonfunctional-requirements) is important to differentiate functional from nonfunctional requirements because:

- They apply to different levels of the system (nonfunctional = system as a whole)
- They are of interest to different people (or some people may only be interested in a subset of requirements)
- They are of interest at different points in the system development lifecycle (nonfunctional = architecture)
- They may be modeled/represented in different ways (nonfunctional = quality attribute scenario)
- Differentiating conceptually helps you be more thorough when eliciting and analyzing requirements
- Modularity (differentiation and cross-referencing) supports iteration

### What are good requirements?

Per Whitney (n.d.), Hooks (1994), and Gurd (2013), good requirements are:

- Complete but feasible, necessary and prioritized
- Unambiguous and clear
- Correct and verifiable
- Traceable: 
    - Provenance of a single requirement
    - Hierarchical dependencies between requirements (their **decomposition)**
    - Other dependencies between requirements (e.g. _satisfies, verifies)_

Per Dennis et al. (2012), common problems with requirements are:

- During requirements elicitation, inadequate access to users or access to the wrong users
- The inevitably iterative nature of requirements is poorly managed
- Requirements are not verified or validated
- Requirements are inadequately specified; i.e., per Hooks:
    - Specifying HOW instead of WHAT
    - Using the wrong terminology:
        - Avoid _are, is, was, must:_
            - Requirements use **shall**
            - Statements of fact use **will**
            - Goals use **should**
        - Words that are dangerously vague: 
            - _support, but not limited to, etc., and/or_
            - _minimize, maximize, rapid, user-friendly, easy, sufficient, adequate, quick_
    - Over-specifying (including unneeded 'requirements', unneeded details, or unnecessarily precise targets)
    
### Gathering requirements

Per Dennis et al. (2012), requirements may be obtained from users, domain experts, existing processes, [process improvement efforts,](process-improvement.html) existing documents, and competing software using the following techniques (and see [notes on qualitative methods):](qualitative-methods.html) 

#### Current state analysis

A current state analysis produces models of the **as-is system** (see [notes on system & process modeling techniques](modeling.html) that are used). Per Dennis et al. (2012), a requirements determination process _may_ begin with current state analysis; this, however, depends on:

(1) **The methodology used by the systems development team:** "Users of traditional design methods such as waterfall and parallel development (see Chapter 1) typically spend significant time understanding the as-is system and identifying improvements before moving to capture requirements for the to-be system. However, newer RAD, agile, and object-oriented methodologies, such as phased development, prototyping, throwaway prototyping, extreme programming, and Scrum (see Chapter 1) focus almost exclusively on improvements and the to-be system requirements."

(2) **The context of the system being developed:**
    (a) No current system exists
    (b) Little effect on current systems

(3) **The amount of system change desired,** i.e. BPA vs. BPI vs. BPR (see [notes on process improvement](process-improvement.html) for definitions and associated methods). The amount of change desired and amount of effort spent analyzing the as-is system are inversely related.

#### Interviews

1. Select interviewees
2. Write an **interview plan:**
    a. Design interview questions (closed, open-ended, probing; note that early interviews should be less structured than later interviews)
    b. Sequence interview questions (top-down or bottom-up, depending on how much information is needed and the role of the interview subject)
4. Conduct the interview, focusing on:
    a. Building rapport and interviewee comfort
    b. Conveying the importance of the interview
    c. Uncovering the facts that underlie interviewee opinions
    d. Taking careful notes (if recording is disallowed)
5. Prepare an **interview summary,** and ask the interviewee for any corrections

#### Observations

#### Surveys or questionnaires 

#### JAD sessions

#### Document analysis



### Analyzing requirements

Per Whitney (n.d.), Dennis et al. (2012), and Ambler (1999), once gathered, requirements may be preserved, analyzed, and expressed in different ways:

#### Actors

Actors are the generic users of a system, e.g. customers, that might appear on a system diagram. Note that actors include other software as well as people. Leffingwell (2010) proposes some questions for identifying actors:

- Who uses the system?
- Who gets information from the system?
- Who provides information to the system?
- Where is the system used?
- Who supports and maintains the system?
- What other systems or devices use this system?

Per Wirfs-Brock and McKean (2001), **primary actors** are outside the system designers' control, and issue requests to the system; **secondary actors** respond to requests _from_ the system.

##### Personas

Personas are different personalities that are meant to humanize a generic actor and show the range of users' needs. Personas are fictional but research-based biographies that reflect your understanding of your users; they are an exercise in fostering empathy and user-centered design. A **primary persona** is one whose needs are distinct enough to require a dedicated interface.

#### User stories

Per Ambler (n.d.), user stories describe, at a high level, the various actions users need to complete. User stories should be written by business or subject matter experts, using the form **"As an X, I need to Y so I can Z."** User stories are refined (split, grouped, reprioritized, etc.) throughout the development process. User stories may be grouped by their **themes.**

#### Use cases

User stories can be decomposed into use cases, enumerating actors' interactions with the system as they pursue their goals. Leffingwell (2010) proposes some questions for identifying use cases:

- What will the actor use the system for?
- Will the actor create, store, change, remove, or read data in the system?
- Will the actor need to inform the system about external events or changes?
- Will the actor need to be informed about certain occurrences in the system?

Similarly, from Schneider and Winters (1998):

- Who uses the system? 
- Who installs the system? 
- Who starts up the system? 
- Who maintains the system? 
- Who shuts down the system? 
- What other systems use this system? 
- Who gets information from this system? 
- Who provides information to the system? 
- Does anything happen automatically at a present time?

##### Use case levels

Per Wirfs-Brock and McKean (2001), use cases are written at different levels that, combined, depict the whole system:

- Summary, the highest level overview;
- Core, human task-level descriptions;
- Supporting, decomposing tasks;
- Internal, describing interactions between system components.

##### Use scenarios

There may be different paths through a use cases, perhaps corresponding to different personas; these paths are called use scenarios, and they may be depicted with a [UML activity diagram](modeling.html#activity-diagrams) or written as a series of bullet points (called a **scenario form).**

##### Conversation form

This is a two-column depiction of a use case/scenario, showing interactions between an actor and the system. User actions should be represented at the level of the user's _intentions,_ i.e. their goals rather than the minute actions they may need to achieve their goals (although this depends greatly on the level of the system diagram).

##### Use case diagrams

Use cases may be depicted collectively with [use case diagrams](modeling.html#use-case-diagrams) that:

- Connect use cases to actors 
- Connect use cases to each other:
    - \<\<include\>\> (routinely shared functionality)
    - \<\<extend\>\> (exceptional scenario)
    
##### Requirements dependency traceability matrix

Uses a table to indicate dependencies between requirements.

##### Use case narratives

Individual use cases are expressed narratively in a flow-of-events AKA requirements definition report, usually including these elements:

- Overview
- Notes
- Actors
- Preconditions
- [Scenario(s),](#use-scenarios) and exceptions AKA alternate flow(s)
- Post conditions AKA exit conditions
- GUI requirements
- Dependencies and relations (to other use cases; often modeled with UML)

#### Requirements trace matrices

Table format linking requirements with other information, e.g. requirement category, priority level, affected class, etc.

#### Card formats

- **CRC cards,** each reflecting a class; responsibilities of that class; and how it collaborates with other classes. 
- **XP Story Cards,** in which a customer writes a story on a card.
- **Volere Snow Cards:**

<img src="../ILLOS/volere.jpeg" width="350px">

#### Glossaries

A special dictionary of acronyms, jargon etc. important for understanding system documentation. Per Wirfs-Brock and McKean (2001), a glossary entry should address the word's scope, typical values/example, related concepts, and significance; definitions should have the form **"X is a [broader term] that [Y]"** and avoid the phrases "is when", "is where" because they permit vagueness.

#### Concept maps

A informally-constructed network of concepts, reflecting entities and their interrelationships. 




## Future state design

See [notes on design thinking](strategy.html#design-thinking) re: imagining the **to-be system;** see [notes on system & process modeling](modeling.html) and [interfaces](interfaces.html) re: characterizing it. 


## Choosing software

See [notes on BI systems](bi.html) for information specific to selecting BI software. Per Lichtenberger (2012):

- Define requirements;
- Scan market for potential vendors;
- Send request for proposal (RFP); 
- Evaluate proposals with a matrix;
- Explore proof of concept (optional);
- Choose vendor.

![](illos/vendor-evaluation.png)

### Writing a request for proposal

- Introduction
- Executive summary
- Instructions for responding (important so that you can compare 'apples to apples')
    - Structure of proposal response
    - Proposal language
    - Contact for questions
    - Deadlines
- Numbered list of requirements
- Requested proof of concept (optional but recommended; helps judge what it will be like to work with the vendor, not just the platform)


# Presenting a solution

Per Clark (2016), in addition to "aesthetics and theatrics", a presentation should include:

- Stakes: what problem is addressed? why does this problem merit action NOW?
- Credibility: show your process of solution generation and vetting
- Clear call to action




# Sources

## Cited

Ambler, S. (1999). Comparing approaches to budgeting and estimating software development projects. Retrieved from [http://www.ambysoft.com/essays/comparingEstimatingApproaches.html](http://www.ambysoft.com/essays/comparingEstimatingApproaches.html)

Ambler, S. (n.d.). User stories: An Agile introduction. (n.d.). Retrieved from [http://www.agilemodeling.com/artifacts/userStory.htm](http://www.agilemodeling.com/artifacts/userStory.htm)

Annabi, H. & McGann, S. (2014). Unit 1---What is MIS? In _The real deal on MIS._

Clark, D. (2016, October 11). A checklist for more persuasive presentations. Retrieved from [https://hbr.org/2016/10/a-checklist-for-more-persuasive-presentations](https://hbr.org/2016/10/a-checklist-for-more-persuasive-presentations)

Clayton, J. (2003). Writing an executive summary that means business. _Harvard Management Communication Letter._

Collella, H. (2009). Effective communications: A strategy. Gartner.

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley.

Gurd, A. (2013, January 28). Managing your requirements 101 – A refresher. Part 4: What is traceability? Requirements Management Blog. Retrieved from [https://www.ibm.com/developerworks/community/blogs/requirementsmanagement/entry/managing_your_requirements_101_a_refresher_part_4_what_is_traceability7](https://www.ibm.com/developerworks/community/blogs/requirementsmanagement/entry/managing_your_requirements_101_a_refresher_part_4_what_is_traceability7)

Hill, J. B., & Cantera, M. (2015). Use business outcomes to determine the scope of the “business process” to be improved (No. G00277312). Gartner.

Hooks, I. (1994). Writing good requirements. In INCOSE International Symposium (Vol. 4, pp. 1247–1253). Wiley Online Library. Retrieved from [http://onlinelibrary.wiley.com/doi/10.1002/j.2334-5837.1994.tb01834.x/full](http://onlinelibrary.wiley.com/doi/10.1002/j.2334-5837.1994.tb01834.x/full)

Kantor, B. (2012, May 22). How to design a successful RACI project plan. _CIO._ Retrieved from [http://www.cio.com/article/2395825/project-management/how-to-design-a-successful-raci-project-plan.html](http://www.cio.com/article/2395825/project-management/how-to-design-a-successful-raci-project-plan.html)

Leffingwell, D. (2010). Stakeholders, user personas, and user experiences. In _Agile software requirements: Lean requirements practices for teams, programs, and the enterprise._ Boston, MA: Addison-Wesley Professional.

Lichtenberger, A. (2012, July 23). Six steps for a successful vendor selection. Retrieved from [http://blog.itil.org/2012/07/allgemein/six-steps-for-a-successful-vendor-selection/](http://blog.itil.org/2012/07/allgemein/six-steps-for-a-successful-vendor-selection/)

MITRE. (n.d.). Risk impact assessment and prioritization. In _MITRE systems engineering guide._ Retrieved from [https://www.mitre.org/publications/systems-engineering-guide/acquisition-systems-engineering/risk-management/risk-management-tools](https://www.mitre.org/publications/systems-engineering-guide/acquisition-systems-engineering/risk-management/risk-management-tools)

Obuchowski, J. (2005). A winning proposition: Crafting effective proposals. _Harvard Management Communication Letter._

Project Management Institute (PMI). (2013). Communication: The message is clear.

Rabinowitz, P. (n.d.). Identifying and analyzing stakeholders and their interests. In _Community Tool Box._ Work Group for Community Health and Development at Kansas State University. Retrieved from [http://ctb.ku.edu/en/table-of-contents/participation/encouraging-involvement/identify-stakeholders/main](http://ctb.ku.edu/en/table-of-contents/participation/encouraging-involvement/identify-stakeholders/main)

Rigby, D. K. (2015). _Management tools 2015: An executive’s guide._ Boston, MA: Bain & Company.

Ross, J. W., & Weill, P. (2002, November 1). Six IT decisions your IT people shouldn’t make. Retrieved from [https://hbr.org/2002/11/six-it-decisions-your-it-people-shouldnt-make](https://hbr.org/2002/11/six-it-decisions-your-it-people-shouldnt-make)

Schneider, G. & Winters, J. P. (1998). _Applying use cases: A practical guide._ Reading, MA: Addison Wesley.

Sheen, R. (2015). How to manage scope creep [video]. _Harvard Business Review._ Retrieved from [https://hbr.org/video/2942763785001/how-to-manage-scope-creep](https://hbr.org/video/2942763785001/how-to-manage-scope-creep)

Watt, A. (2014). The project life cycle (phases). In _Project Management._ BCcampus Open Textbook Project. Retrieved from [https://opentextbc.ca/projectmanagement/chapter/chapter-3-the-project-life-cycle-phases-project-management/](https://opentextbc.ca/projectmanagement/chapter/chapter-3-the-project-life-cycle-phases-project-management/)   

Whitney, E. (n.d.). Introduction to gathering requirements and creating use cases. Retrieved from [http://www.codemag.com/Article/0102061](http://www.codemag.com/Article/0102061)

Wikipedia. (2017, March 28). Work breakdown structure. Retrieved from [https://en.wikipedia.org/w/index.php?title=Work_breakdown_structure&oldid=772556888](https://en.wikipedia.org/w/index.php?title=Work_breakdown_structure&oldid=772556888)

Wirfs-Brock, R., & McKean, A. (2001). The art of writing use cases. In _Tutorial for OOPSLA Conference._ Retrieved from [https://www.researchgate.net/profile/Rebecca_Wirfs-Brock/publication/228393043_The_Art_of_Writing_Use_Cases/links/00b49517fe3053c449000000.pdf](https://www.researchgate.net/profile/Rebecca_Wirfs-Brock/publication/228393043_The_Art_of_Writing_Use_Cases/links/00b49517fe3053c449000000.pdf)

## References

## Read

## Unread

- [_Project Management from Simple to Complex_](https://open.umn.edu/opentextbooks/BookDetail.aspx?bookId=36)
- [Capability Maturity Model](https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=6759)

