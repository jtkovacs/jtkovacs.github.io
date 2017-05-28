<p class="path"><a href="../pkb.html">pkb contents</a> \> project management | nearly 3294 words | updated 05/16/2017</p><div class="TOC">- 1. [What is project management?](#what-is-project-management)
	- 1.1. [Overview of PM methodologies](#overview-of-pm-methodologies)
- 2. [Initiating a project](#initiating-a-project)
	- 2.1. [Strategic assessment](#strategic-assessment)
		- 2.1.1. [PESTEL analysis](#pestel-analysis)
		- 2.1.2. [Porter's five forces analysis](#porters-five-forces-analysis)
		- 2.1.3. [Risk analysis](#risk-analysis)
			- 2.1.3.1. [POET analysis](#poet-analysis)
			- 2.1.3.2. [SWOT/SLOT analysis](#swotslot-analysis)
			- 2.1.3.3. [Risk matrix](#risk-matrix)
		- 2.1.4. [Gap analysis](#gap-analysis)
		- 2.1.5. [Stakeholder analysis](#stakeholder-analysis)
			- 2.1.5.1. [RACI plan](#raci-plan)
		- 2.1.6. [Force field analysis](#force-field-analysis)
	- 2.2. [Writing a business case or proposal](#writing-a-business-case-or-proposal)
		- 2.2.1. [Writing an executive summary](#writing-an-executive-summary)
	- 2.3. [Writing a project charter](#writing-a-project-charter)
		- 2.3.1. [Vision & success criteria](#vision-success-criteria)
		- 2.3.2. [Defining & managing scope](#defining-managing-scope)
- 3. [Project planning](#project-planning)
	- 3.1. [... in Agile methodologies](#...-in-agile-methodologies)
	- 3.2. [... in lifecycle methodologies](#...-in-lifecycle-methodologies)
		- 3.2.1. [Communications plan](#communications-plan)
		- 3.2.2. [Work breakdown structure](#work-breakdown-structure)
		- 3.2.3. [Budgeting](#budgeting)
		- 3.2.4. [Scheduling](#scheduling)
		- 3.2.5. [Monitoring & reporting](#monitoring-reporting)
- 4. [Analysis, design & specification](#analysis-design-specification)
	- 4.1. [Requirements determination](#requirements-determination)
		- 4.1.1. [Current state analysis](#current-state-analysis)
		- 4.1.2. [Gathering requirements](#gathering-requirements)
			- 4.1.2.1. [Interviews](#interviews)
			- 4.1.2.2. [Observations](#observations)
			- 4.1.2.3. [Surveys or questionnaires ](#surveys-or-questionnaires-)
			- 4.1.2.4. [JAD sessions](#jad-sessions)
			- 4.1.2.5. [Document analysis](#document-analysis)
		- 4.1.3. [Analyzing requirements](#analyzing-requirements)
			- 4.1.3.1. [Actors & personas](#actors-personas)
			- 4.1.3.2. [User stories](#user-stories)
			- 4.1.3.3. [Concept maps](#concept-maps)
			- 4.1.3.4. [Requirements trace matrices](#requirements-trace-matrices)
			- 4.1.3.5. [Card formats](#card-formats)
			- 4.1.3.6. [Use cases & requirements definition reports](#use-cases-requirements-definition-reports)
				- 4.1.3.6.1. [Use scenarios](#use-scenarios)
				- 4.1.3.6.2. [Use case diagrams](#use-case-diagrams)
	- 4.2. [Future state design](#future-state-design)
	- 4.3. [Choosing software](#choosing-software)
- 5. [Monitoring & governance](#monitoring-governance)
- 6. [Sources](#sources)
	- 6.1. [Cited](#cited)
	- 6.2. [References](#references)
	- 6.3. [Read](#read)
	- 6.4. [Unread](#unread)
</div>
# 1. What is project management?

## 1.1. Overview of PM methodologies

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



# 2. Initiating a project

## 2.1. Strategic assessment

PESTEL, Porter's five, and SWOT/SLOT analyses are more common in the context of organizational strategic planning, but they can also be scoped for projects.

### 2.1.1. PESTEL analysis

Systematic review of the broadest trends and forces that constitute the business environment, to identify the implications for organizational strategy (since projects should be related to an organization's strategic goals):

- **Political:** trade policy, international relations, fiscal policy, electoral cycle, tax policy
- **Economic:** unemployment, disposable income, exchange rates, interest rates, trade tariffs, inflation, taxation 
- **Social:** demographics, ethics, consumer attitudes, media
- **Technological:** maturity of various technologies, trends
- **Environmental:** ecological impacts of operations, consumer attitudes
- **Legal:** patents & licensing, employment law, consumer protections, industry-specific regulations, environmental protections, competitive regulations

### 2.1.2. Porter's five forces analysis

Framework for evaluating the intensity of competition in a specific market or industry, which may have implications for whether a project is worth undertaking or may point to profitable niches:

- Bargaining power of **consumers**
- Bargaining power of **suppliers**
- Threat of **established competitors**
- Threat of **new entrants**
- Threat of **product substitutes**

### 2.1.3. Risk analysis



#### 2.1.3.1. POET analysis

#### 2.1.3.2. SWOT/SLOT analysis

Framework for making connections between a company's external landscape and internal characteristics (which can be restricted to the scope of a single project). Data is collected and sorted into a matrix, with one matrix for each alternative under consideration:

- Internal **strengths**
- Internal **weaknesses** or liabilities
- External **opportunities**
- External **threats**

#### 2.1.3.3. Risk matrix



### 2.1.4. Gap analysis

Also called need-gap analysis, need analysis, or need assessment. Gap analysis is a way of ensuring that planned actions align with objectives and present a reasonable pathway from the current reality to the desired state. (The 5 whys or fishbone/Ishikawa/cause-and-effect diagrams may be useful in analyzing the current reality to identify possible actions; see [notes on process improvement.)](#process-improvement.html)

| Objective | Reality | Action |
| --- | --- | --- |
| 12 widgets daily | 2 widgets | Hire more workers |

### 2.1.5. Stakeholder analysis

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

#### 2.1.5.1. RACI plan
    
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
  
### 2.1.6. Force field analysis

Facilitates organizational change by enumerating the forces that help or hinder an organization's ability to make change (note that individual people may constitute a force).

![Example force field analysis](https://www.odi.org/sites/odi.org.uk/files/odi-assets/embedded-images/Forcefield.gif)

## 2.2. Writing a business case or proposal

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

### 2.2.1. Writing an executive summary

Per Clayton (2003):

- An executive summary is not a summary; it's an articulation of the business case.
- Can't just echo the RFP, because readers of the full RFP and the executive summary differ.
- Beyond other respondents, you're competing against inertia (since the client may ultimately do nothing).
- Describe your solution in terms of business outcomes; don't get into the technical details.

## 2.3. Writing a project charter
    
- Project Charter
- Project Initiation Document (PID)
- Project Mandate

### 2.3.1. Vision & success criteria

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

### 2.3.2. Defining & managing scope

Per Sheen (2015), scope creep is pervasive. Scope should be clearly addressed during the project initiation phase by (1) listing what's in and out of scope, provided stakeholders agree about scope; or (2) establishing scope ranges AKA scope tolerance parameters, which can be pinpointed as information emerges. A task is out of scope if it (1) doesn't make a direct contribution to the project goal, or (2) if time and money are binding constraints. **Project the impact of requested additional tasks;** never simply agree to perform them.



# 3. Project planning

## 3.1. ... in Agile methodologies

In the traditional "serial" or lifecycle project management approach, requirements are translated into deliverables, deliverables are translated into a work breakdown structure (WBS), and the WBS is translated into a schedule and budget. Per Ambler (n.d.), about two-thirds of requirements elicited in this way lead to features that are never or rarely used, i.e. "spectacular levels of waste". In response, Agile tries to match development processes to the realities of constantly shifting requirements using:

- ... in place of a schedule, a **stack** of prioritized requirements with detailed modeling done 'just in time';
- ... in place of a budget, funding is continuously adjusted in response to the **value** delivered by products.

## 3.2. ... in lifecycle methodologies

### 3.2.1. Communications plan

Per Collella (2009), effective organizational communication requires a **communications strategy,** which includes (1) a core message that is not burdened with IT jargon, (2) the capacity to refine messages in response to stakeholder cues, and (3) assessment; a **communications plan** for institutionalizing and executing the strategy; and **communication delivery skills.**

Per PMI (2013):
 
- Be able to sell people on the strategic value of communication
- Know who you need to talk to, and how much [(see: RACI plan)](#raci-plan)
- Plan should specify modes of communication; adjust to people's habits where possible

### 3.2.2. Work breakdown structure

Per Wikipedia (2017), a work breakdown structure (WBS) is a **hierarchical decomposition of a project's total work.** WBS elements are coded as 1.0, 1.1, 1.10.11, etc. Child elements must sum to 100% of their parent element, and so on until 100% of the project's total work is accounted for. Elements must be mutually exclusive, which is easier to accomplish if elements are _outcomes,_ not tasks. There are different heuristics for establishing the terminal granularity of a WBS:

- 80 hour rule: smallest element must not exceed 80 hours of work
- Smallest element must be small enough to occur within the standard reporting period

Once the hierarchy is established, terminal elements are budgeted and scheduled.

### 3.2.3. Budgeting

### 3.2.4. Scheduling

- Critical Path
- Crash
- Gate
- Milestone
- Gantt Chart
- PERT Chart

### 3.2.5. Monitoring & reporting

- CARDI Log (Constraints/Assumptions/Risks/Dependencies/Issues)
- RAG Status
- Project Dashboard




# 4. Analysis, design & specification

## 4.1. Requirements determination

Designs must emerge from in-depth analysis of [stakeholder](#stakeholder-analysis) (not just user) needs; requirements determination is the process of eliciting, analyzing, and synthesizing stakeholder needs so they can influence system design. Dennis et al. (2012) note that the analysis and design phases of a system implementation effort are very closely linked. That is, the product/s of requirements determination are "initial designs". They also note that requirements are expressed first as **business requirements** (from the perspective of stakeholders, including users), second as **system requirements** (from the perspective of developers). 

Requirements are also categorized as **functional** (what business tasks a system must perform) and **nonfunctional** (operational, performance, security, cultural and political requirements that affect how tasks are performed, and may arise from regulations such as Sarbanes-Oxley or the desire to comply with standards such as [COBIT,](https://www.isaca.org/COBIT/Pages/default.aspx) [ISO 9000,](https://www.iso.org/iso-9001-quality-management.html) and the [Capability Maturity Model).](https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=6759) Per [StackExchange answers,](https://softwareengineering.stackexchange.com/questions/82763/why-bother-differentiating-between-functional-and-nonfunctional-requirements) is important to differentiate functional from nonfunctional requirements because:

- They apply to different levels of the system (nonfunctional = system as a whole)
- They are of interest to different people (or some people may only be interested in a subset of requirements)
- They are of interest at different points in the system development lifecycle (nonfunctional = architecture)
- They may be modeled/represented in different ways (nonfunctional = quality attribute scenario)
- Differentiating conceptually helps you be more thorough when eliciting and analyzing requirements
- Modularity (differentiation and cross-referencing) supports iteration

Per Whitney (n.d.), good requirements are:

- Complete, correct, unambiguous, verifiable
- Necessary, feasible, prioritized

Per Avison and Fitzger (2006) qtd. in Dennis et al. (2012), common problems with requirements determination are:

- Inadequate access to users or access to the wrong users for requirements elicitation
- Requirements are inadequately specified
- The inevitably iterative nature of requirements is poorly managed
- Requirements are not verified or validated

### 4.1.1. Current state analysis

Per Dennis et al. (2012), a requirements determination process may begin with current state analysis, yielding models of the **as-is system** (see [notes on system & process modeling techniques](modeling.html) that are used to characterize the current states of the system). This, however, depends on:

(1) **The methodology used by the systems development team:** "Users of traditional design methods such as waterfall and parallel development (see Chapter 1) typically spend significant time understanding the as-is system and identifying improvements before moving to capture requirements for the to-be system. However, newer RAD, agile, and object-oriented methodologies, such as phased development, prototyping, throwaway prototyping, extreme programming, and Scrum (see Chapter 1) focus almost exclusively on improvements and the to-be system requirements."

(2) **The context of the system being developed:**
    (a) No current system exists
    (b) Little effect on current systems

(3) **The amount of system change desired,** i.e. BPA vs. BPI vs. BPR (see [notes on process improvement](process-improvement.html) for definitions and associated methods). The amount of change desired and amount of effort spent analyzing the as-is system are inversely related.
    
### 4.1.2. Gathering requirements

Per Dennis et al. (2012), requirements may be obtained from users, domain experts, existing processes, [process improvement efforts,](process-improvement.html) existing documents, and competing software using the following techniques (and see [notes on qualitative methods):](qualitative-methods.html) 

#### 4.1.2.1. Interviews

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

#### 4.1.2.2. Observations

#### 4.1.2.3. Surveys or questionnaires 

#### 4.1.2.4. JAD sessions

#### 4.1.2.5. Document analysis



### 4.1.3. Analyzing requirements

Per Whitney (n.d.), Dennis et al. (2012), and Ambler (1999), once gathered, requirements may be preserved, analyzed, and expressed in different ways:

#### 4.1.3.1. Actors & personas

**Actors** are the generic users of a system, e.g. customers, that might appear on a system diagram. Note that actors include other software as well as people. **Personas** are different personalities that are meant to humanize a generic actor and show the range of users' needs. Personas are fictional but research-based biographies that reflect your understanding of your users; they are an exercise in fostering empathy and user-centered design.

A **primary persona** is one whose needs are distinct enough to require a dedicated interface.

#### 4.1.3.2. User stories

User stories describe, at a high level, the various actions users need to complete. User stories should be written by business or subject matter experts, using the form **"As an X, I need to Y so I can Z."** User stories are refined (split, grouped, reprioritized, etc.) throughout the development process.

#### 4.1.3.3. Concept maps

A informally-constructed network of concepts, reflecting entities and their interrelationships. 

#### 4.1.3.4. Requirements trace matrices

Table format linking requirements with other information, e.g. requirement category, priority level, affected class, etc.

#### 4.1.3.5. Card formats

- **CRC cards,** each reflecting a class; responsibilities of that class; and how it collaborates with other classes. 
- **XP Story Cards,** in which a customer writes a story on a card.
- **Volere Snow Cards:**

<img src="../ILLOS/volere.jpeg" width="350px">

#### 4.1.3.6. Use cases & requirements definition reports

Requirements are often analyzed by grouping them into **use cases,** capturing actors' archetypical interactions with the system. Per Whitney (n.d.), "Use cases integrate the requirements into a comprehensive package that describes the interaction of the user with the system ... [They] should describe the interaction between the actor and the system - what the actor does and how the system reacts. Use cases are expressed textually (AKA **requirements definition report),** usually including these elements:

- Overview
- Notes
- Actors
- Preconditions
- [Scenario(s),](#use-scenarios) AKA alternate course(s)
- Post conditions
- Exceptions
- GUI requirements
- Dependencies and relations (to other use cases; often modeled with UML)

##### 4.1.3.6.1. Use scenarios

There may be different paths through a use cases, perhaps corresponding to different personas; these paths are called **use scenarios,** and they may be depicted with a [UML activity diagram.](modeling.html#activity-diagrams)

##### 4.1.3.6.2. Use case diagrams

Use cases may be depicted collectively with a **use case diagram:** 

<img src="../ILLOS/use-case-diagram.gif" width="350px"/>



## 4.2. Future state design

See [notes on system & process modeling](modeling.html) for methods used to characterize the **to-be system.** 



## 4.3. Choosing software

See [notes on BI systems](BI.html) for information specific to selecting BI software. 

General criteria to consider:

- [Capability Maturity Model](https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=6759)




# 5. Monitoring & governance





# 6. Sources

## 6.1. Cited

Ambler, S. (n.d.). Comparing approaches to budgeting and estimating software development projects. Retrieved from [http://www.ambysoft.com/essays/comparingEstimatingApproaches.html](http://www.ambysoft.com/essays/comparingEstimatingApproaches.html)

Annabi, H. & McGann, S. (2014). Unit 1---What is MIS? In _The real deal on MIS._

Clayton, J. (2003). Writing an executive summary that means business. _Harvard Management Communication Letter._

Collella, H. (2009). Effective communications: A strategy. Gartner.

Dennis, A., Haley Wixom, B., & Tegarden, D. (2012). Requirements determination. In _Systems analysis and design: An object oriented approach with UML_ (4th ed., pp. 109–152). Hoboken, NJ: Wiley.

Hill, J. B., & Cantera, M. (2015). Use business outcomes to determine the scope of the “business process” to be improved (No. G00277312). Gartner.

Kantor, B. (2012, May 22). How to design a successful RACI project plan. _CIO._ Retrieved from [http://www.cio.com/article/2395825/project-management/how-to-design-a-successful-raci-project-plan.html](http://www.cio.com/article/2395825/project-management/how-to-design-a-successful-raci-project-plan.html)

Leffingwell, D. (2010). Stakeholders, user personas, and user experiences. In _Agile software requirements: Lean requirements practices for teams, programs, and the enterprise._ Boston, MA: Addison-Wesley Professional.

MITRE. (n.d.). Risk impact assessment and prioritization. In _MITRE systems engineering guide._ Retrieved from [https://www.mitre.org/publications/systems-engineering-guide/acquisition-systems-engineering/risk-management/risk-management-tools](https://www.mitre.org/publications/systems-engineering-guide/acquisition-systems-engineering/risk-management/risk-management-tools)

Obuchowski, J. (2005). A winning proposition: Crafting effective proposals. _Harvard Management Communication Letter._

Project Management Institute (PMI). (2013). Communication: The message is clear.

Rabinowitz, P. (n.d.). Identifying and analyzing stakeholders and their interests. In _Community Tool Box._ Work Group for Community Health and Development at Kansas State University. Retrieved from [http://ctb.ku.edu/en/table-of-contents/participation/encouraging-involvement/identify-stakeholders/main](http://ctb.ku.edu/en/table-of-contents/participation/encouraging-involvement/identify-stakeholders/main)

Rigby, D. K. (2015). _Management tools 2015: An executive’s guide._ Boston, MA: Bain & Company.

Sheen, R. (2015). How to manage scope creep [video]. _Harvard Business Review._ Retrieved from [https://hbr.org/video/2942763785001/how-to-manage-scope-creep](https://hbr.org/video/2942763785001/how-to-manage-scope-creep)

Watt, A. (2014). The project life cycle (phases). In _Project Management._ BCcampus Open Textbook Project. Retrieved from [https://opentextbc.ca/projectmanagement/chapter/chapter-3-the-project-life-cycle-phases-project-management/](https://opentextbc.ca/projectmanagement/chapter/chapter-3-the-project-life-cycle-phases-project-management/)   

Whitney, E. (n.d.). Introduction to gathering requirements and creating use cases. Retrieved from [http://www.codemag.com/Article/0102061](http://www.codemag.com/Article/0102061)

Wikipedia. (2017, March 28). Work breakdown structure. Retrieved from [https://en.wikipedia.org/w/index.php?title=Work_breakdown_structure&oldid=772556888](https://en.wikipedia.org/w/index.php?title=Work_breakdown_structure&oldid=772556888)

## 6.2. References

## 6.3. Read

## 6.4. Unread

- [_Project Management from Simple to Complex_](https://open.umn.edu/opentextbooks/BookDetail.aspx?bookId=36)