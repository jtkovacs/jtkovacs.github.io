<table class="TOC"><tr><td>- [What is project management?](#what-is-project-management?)
	- [Project Life Cycle (PLC)](#project-life-cycle-(plc))
	- [Systems Development Lifecycle (SDLC)](#systems-development-lifecycle-(sdlc))
	- [Agile](#agile)
- [Initiating a project](#initiating-a-project)
	- [Evaluating desirability & feasibility](#evaluating-desirability-&-feasibility)
		- [PESTEL analysis](#pestel-analysis)
		- [Porter's five forces analysis](#porter's-five-forces-analysis)
		- [SWOT/SLOT analysis](#swot/slot-analysis)
		- [Gap analysis](#gap-analysis)
		- [Stakeholder analysis](#stakeholder-analysis)
			- [RACI plan](#raci-plan)
		- [Force field analysis](#force-field-analysis)
	- [Writing a business case or proposal](#writing-a-business-case-or-proposal)
	- [Writing a project charter](#writing-a-project-charter)
		- [Vision](#vision)
		- [Scope](#scope)
		- [Success criteria](#success-criteria)
- [Planning](#planning)
	- [Implementation planning](#implementation-planning)
	- [Work breakdown structure](#work-breakdown-structure)
	- [Communications plan](#communications-plan)
- [Analysis, design & specification](#analysis,-design-&-specification)
	- [Requirements analysis](#requirements-analysis)
		- [User personas](#user-personas)
		- [Use cases](#use-cases)
		- [User stories](#user-stories)
	- [Prototyping UI](#prototyping-ui)
	- [Current state, future state analysis](#current-state,-future-state-analysis)
		- [Modeling data flows](#modeling-data-flows)
		- [Modeling processes](#modeling-processes)
		- [Modeling systems architecture](#modeling-systems-architecture)
	- [Choosing software](#choosing-software)
- [Monitoring & governance](#monitoring-&-governance)
- [Sources](#sources)
</td></tr></table>
# What is project management?

## Project Life Cycle (PLC)

Per Watt (2014):

1. Initiation
2. Planning
3. Implementation/Execution
4. Closing

## Systems Development Lifecycle (SDLC)

1. Planning
2. Analysis
3. Design
4. Development
5. Implementation/Rollout

## Agile




# Initiating a project

## Evaluating desirability & feasibility

PESTEL, Porter's five, and SWOT/SLOT analyses are more common in the context of organizational strategic planning, but can also be scoped for projects.

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

### SWOT/SLOT analysis

Framework for making connections between a company's external landscape and internal characteristics (which can be restricted to the scope of a single project). Data is collected and sorted into a matrix, with one matrix for each alternative under consideration:

- Internal **strengths**
- Internal **weaknesses** or liabilities
- External **opportunities**
- External **threats**

### Gap analysis

Also called need-gap analysis, need analysis, or need assessment. Gap analysis is a way of ensuring that planned actions align with objectives and present a reasonable pathway from the current reality to the desired state. The 5 whys or fishbone/Ishikawa/cause-and-effect diagrams may be useful in analyzing the current reality to identify possible actions.

| Objective | Reality | Action |
| --- | --- | --- |
| 12 widgets daily | 2 widgets | Hire more workers |

### Stakeholder analysis

The general aim is to identify stakeholders; analyze their interests and expectations; categorize interests and expectations based on importance and level of stakeholder influence; and develop an action plan that delimits roles for different stakeholders. 

Different authors present different stakeholder typologies. Per Leffingwell (2010):

- **Users** are stakeholders
- **System stakeholders** are those who:
    - Will use the system
    - Will work with those who use the system
    - Will be impacted by the deployment and operation of a system
- **Project stakeholders** are those who:
    - Have a vested interest in the project's budget and schedule
    - Will be involved in marketing, selling, installing, or maintaining the system

Per Rabinowitz (n.d.):

- **Primary** stakeholders use a system directly 
- **Secondary** stakeholders have only indirect contact
- **Key** stakeholders have decision-making authority

Rabinowitz also maps stakeholder groups on axes of interest and influence:

<table>
<tr><th></th><th>Low interest</th><th>High interest</th></tr>
<tr><th>High influence</th><td>Latents</td><td>Promoters</td></tr>
<tr><th>Low influence</th><td>Apathetics</td><td>Defenders</td></tr>
</table>
    
#### RACI plan
    
Once identified, decisions must be made about levels of stakeholder involvement. A RACI plan can capture stakeholder roles as well as roles for those involved in executing the project. Per Kantor (2012):

1. Identify all the tasks involved in delivering the project and list them on the left-hand side of the chart in completion order.
2. Identify all the project stakeholders and list them along the top of the chart.
3. Complete the cells of the model identifying who has **responsibility (R)**, **accountability (A)** and who will be **consulted (C)** and **informed (I)** for each task.
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
<tr><th>Proposal problem</th><th>Remedy</th></tr>
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

Per Clayton (2003), some thoughts about writing an executive summary for a business proposal:

- An executive summary is not a summary; it's an articulation of the business case.
- Can't just echo the RFP, because readers of the full RFP and the executive summary differ.
- Beyond other respondents, you're competing against inertia (since the client may ultimately do nothing).
- Describe your solution in terms of business outcomes; don't get into the technical details.

## Writing a project charter
    
Project Charter
Project Initiation Document (PID)
Project Mandate

### Vision

### Scope

### Success criteria




# Planning

## Implementation planning

## Work breakdown structure

## Communications plan

Per PMI (2013):
 
- Be able to sell people on the strategic value of communication
- Know who you need to talk to (see [RACI plan](#RACI-plan))
- Communications plan should include preferred modes of communication; adjust to people's habits where possible

Scheduling:

- Critical Path
- Crash
- Gate
- Milestone
- Gantt Chart
- PERT Chart

Monitoring and Reporting

- CARDI Log – (Constraints/Assumptions/Risks/Dependencies/Issues)
- RAG Status
- Project Dashboard




# Analysis, design & specification

## Requirements analysis

### User personas

I need to X in order to Y
List of goals
Pain points
Scenarios

### Use cases

### User stories

## Prototyping UI

## Current state, future state analysis

### Modeling data flows

### Modeling processes

Hard to distinguish business process from IT process from work

### Modeling systems architecture

## Choosing software

# Monitoring & governance

... 

# Sources

Clayton, J. (2003). Writing an executive summary that means business. _Harvard Management Communication Letter._

Kantor, B. (2012, May 22). How to design a successful RACI project plan. _CIO._ Retrieved from http://www.cio.com/article/2395825/project-management/how-to-design-a-successful-raci-project-plan.html

Leffingwell, D. (2010). Stakeholders, user personas, and user experiences. In _Agile software requirements: Lean requirements practices for teams, programs, and the enterprise._ Boston, MA: Addison-Wesley Professional.

Obuchowski, J. (2005). A winning proposition: Crafting effective proposals. _Harvard Management Communication Letter._

Project Management Institute (PMI). (2013). Communication: The message is clear.

Rabinowitz, P. (n.d.). Identifying and analyzing stakeholders and their interests. In _Community Tool Box._ Work Group for Community Health and Development at Kansas State University. Retrieved from http://ctb.ku.edu/en/table-of-contents/participation/encouraging-involvement/identify-stakeholders/main

Watt, A. (2014). The project life cycle (phases). In _Project Management._ BCcampus Open Textbook Project. Retrieved from https://opentextbc.ca/projectmanagement/chapter/chapter-3-the-project-life-cycle-phases-project-management/   
