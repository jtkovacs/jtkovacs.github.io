<p class="path"><a href="../pkb.html">pkb contents</a> \> information systems | just under 1201 words | updated 10/14/2017</p><div class="TOC">- &nbsp;1. [What are information systems for?](#what-are-information-systems-for)
	- &nbsp;1.1. [What is Big Data?](#what-is-big-data)
- &nbsp;2. [What are management information systems (MIS)?](#what-are-management-information-systems-mis)
	- &nbsp;2.1. [Evolution of MIS](#evolution-of-mis)
	- &nbsp;2.2. [Why use a MIS?](#why-use-a-mis)
	- &nbsp;2.3. [Why not use a MIS?](#why-not-use-a-mis)
	- &nbsp;2.4. [Types of MIS](#types-of-mis)
		- &nbsp;2.4.1. [Enterprise systems](#enterprise-systems)
			- &nbsp;2.4.1.1. [Enterprise resource planning (ERP)](#enterprise-resource-planning-erp)
			- &nbsp;2.4.1.2. [Customer relationship management (CRM)](#customer-relationship-management-crm)
			- &nbsp;2.4.1.3. [Supply chain management (SCM)](#supply-chain-management-scm)
		- &nbsp;2.4.2. [Business intelligence (BI)](#business-intelligence-bi)
		- &nbsp;2.4.3. [Collaboration systems (CS)](#collaboration-systems-cs)
- &nbsp;3. [Other IS](#other-is)
- &nbsp;4. [Implementing an IS](#implementing-an-is)
	- &nbsp;4.1. [Customizing an IS](#customizing-an-is)
- &nbsp;5. [Governance of IS](#governance-of-is)
- &nbsp;6. [Sources](#sources)
	- &nbsp;6.1. [Cited](#cited)
</div>



# 1. What are information systems for?

IS are for managing information across its lifecycle:

- Per Detlor (2010):
    - create, acquire, organize (index/classify for retrieval), store, distribute, use
    - acquisition, organization, control, dissemination and use
    - (i) identification of information needs, (ii) acquisition of information to address those needs, (iii) organization and storage of information, (iv) design and development of information products, (v) distribution of information and (vi) information use
    - (i) acquisition, (ii) organization, (iii) storage, (iv) retrieval, (v) access/lending and (vi) dissemination
- Per Archives.gov (2016): production, collection, use, management, maintenance, preservation, and disposal or permanent retention

## 1.1. What is Big Data?

- volume
- variety
- velocity
- … a growing list




# 2. What are management information systems (MIS)?

Per Annabi and McGann (2014a), information systems (IS) consist of three components, represented as the **IS triangle:**

- **Business processes:** a predefined way in which an organization performs its functions
- **People:** various [stakeholders](project-management.html#stakeholder-analysis)
- **IT:** hardware and software

IS professionals work with IT professionals to create IS systems. IT people build the IT, but IS people identify the problems that an IS system may solve or the opportunities that an IS system may create, and coordinate implementation of an IS that meets the organization's needs.

## 2.1. Evolution of MIS

Per Annabi and McGann (2014b):

- **Computational systems** were very narrow and focused on automating tedious tasks, e.g. keeping a ledger
- **Functional systems** were slightly broader and place automated tasks in context of all related tasks, e.g. accounting and financial reporting
- **Enterprise systems** are broadest and try to integrate processes across functional areas, e.g. recognizing the relationship between accounting and HR, as well as bridging internal and external users

## 2.2. Why use a MIS?

Davenport (1998) claims the raison d'être of enterprise systems is to integrate information fragmented across many legacy systems --- which has costs both direct (maintaining systems and integrating them ad hoc) and indirect (missed opportunities and poor service). By uniting cross-departmental data and functionality into a single software package, enterprise systems can dramatically increase business process efficiency (Davenport cites examples).

## 2.3. Why not use a MIS?

Davenport (1998) argues that "the technical challenges, however great, are not the main reason enterprise systems fail. The biggest problems are business problems.

**(1)** Companies fail to reconcile the technological imperatives of the enterprise system with the business needs of the enterprise itself." It's important to realize that EIS impose requirements, and since EIS are often too complex to [customize,](#customizing-an-is) this means changing business processes (of one EIS initiative, an executive commented "We plan to use SAP as a battering ram to make our culture less autonomous"). While the standardization an EIS imposes may support employee autonomy by reducing managerial roles, it can also destroy employees' sense of creativity, choice and control.

**(2)** Moreover, as EIS spread throughout industry, "convergence around a single software package should raise a sobering question in the minds of chief executives: How similar can our information flows and our processes be to those of our competitors before we begin to undermine our own sources of differentiation in the market?" This question is not salient to all companies, but for some, "differentiation is based more on service and price than on product."

## 2.4. Types of MIS

There are three major MIS in an enterprise, collectively referred to as an organization's **IS architecture:**

- **Enterprise systems (ES)** are used to perform the daily tasks of a business; includes ERP, CRM, and SCM systems.
- **Business intelligence (BI) systems** are used to inform strategic decisions; see [notes on BI](bi.html)
- **Collaboration systems (CS)** are used to connect people.

### 2.4.1. Enterprise systems

![**Source:** Davenport (1998)](illos/eis-anatomy.png)

![**Source:** Davenport (1998)](illos/eis-scope.png)

#### 2.4.1.1. Enterprise resource planning (ERP)

- Major providers: SAP, Oracle, Sage Group, Microsoft Dynamics, SSA Global Technologies, Baan, PeopleSoft
- Benefits: Eliminate data inconsistencies; enable reporting that covers the entirety of a business function or process; better availability of data.
- Costs: Purchase, training, data conversion, consulting fees, etc. Also enforce standardization of business processes, which users may resist.

#### 2.4.1.2. Customer relationship management (CRM)

- CRMs incl. sales, marketing, customer service, and analysis of such.
- Benefits: Enable targeted marketing and experiences; help discover new customers; support better customer service to attract and retain customers.
- Costs: ERM success depends on a customer-centric organizational culture, which can be hard to develop.

#### 2.4.1.3. Supply chain management (SCM)

- External interface; covers suppliers, manufacturers, distributors, and customers (presumably in a way that isn't redundant to the CRM??).
- Benefits: Avoid waste in supply chain by identifying inefficiencies and improving forecasting.
- Costs: SCM success depends on (1) trust among members of the supply chain, and (2) accurate models of the supply chain, which can be dauntingly complex.

### 2.4.2. Business intelligence (BI)

See [notes on BI.](bi.html)

- Reporting
- Data mining
- Decision support systems (DSS)
- Expert systems (ES)
- AI systems

### 2.4.3. Collaboration systems (CS)

- Groupware
- Workflow
- Collaboration
- Social media
- Email
- Knowledge management
- Internet, extranet, intranet





# 3. Other IS

- Digital asset management (DAM)
- Content management systems (CMS)
- Libraries, catalogs, portals, archives





# 4. Implementing an IS

See [notes on project management](project-management.html) for complete description of phases and techniques employed across the systems development lifecycle (SDLC).

## 4.1. Customizing an IS

Davenport (1998) identifies several pathways:

- Selective adoption of EIS modules, which entails "determining what should be common throughout the organization and what should be allowed to vary"
- Modifications to configuration files
- Modifications to EIS code (may be proprietary)
- Construction of programmatic interfaces between legacy and EIS systems



# 5. Governance of IS

Per Archives.gov (2016), there are two aspects to governance: **(1)** specifying the structure of accountability ("boundaries, authorities, responsibilities, and tasks") and **(2)**
measuring performance. The governance structure should be as simple and stable as possible, and may include:

- Memoranda of Understanding between units
- Project- or entity-specific charters
- Statutes, administrative directives and policies

Many [project management practices and artifacts](project-management.html) contribute to governance:

- Project proposal **(strategic level):**
    - Lays out the business case, explaining how a project aligns with strategy;
    - Sets the scope of the project;
    - Identifies applicable policies, regulations, etc.;
- **Operational level:**
    - Communications plan keeps stakeholders informed;
    - Work breakdown structure keeps projects on deadline and in budget;
    - Business process analysis determines how system will interface with operations;
    - Requirements determination ensures the system is aligned with operations and needs;
- **Technical level** (system-specific)

![](illos/governance.png)




# 6. Sources

## 6.1. Cited

Annabi, H. & McGann, S. (2014a). Unit 1 -- What is MIS? In _The real deal on MIS._

Annabi, H. & McGann, S. (2014b). Unit 2 -- Enterprise systems: The benefits and challenges of integrating people, process and information technology. In _The real deal on MIS._

Archives.gov. (2016, August 15). Guidance for building an effective enterprise-wide Electronic Records Management (ERM) governance. Retrieved from [https://www.archives.gov/records-mgmt/policy/governance-guidance.html](https://www.archives.gov/records-mgmt/policy/governance-guidance.html)

Bloch, M., Blumberg, S., & Laartz, J. (n.d.). Delivering large-scale IT projects on time, on budget, and on value. McKinsey & Company. Retrieved from [http://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/delivering-large-scale-it-projects-on-time-on-budget-and-on-value](http://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/delivering-large-scale-it-projects-on-time-on-budget-and-on-value)

Davenport, T. H. (1998). Putting the enterprise into the enterprise system. _Harvard Business Review._ Retrieved from [https://hbr.org/1998/07/putting-the-enterprise-into-the-enterprise-system](https://hbr.org/1998/07/putting-the-enterprise-into-the-enterprise-system)

Detlor, B. (2010). Information management. _International Journal of Information Management,_ 30(2), 103-108. [http://dx.doi.org/10.1016/j.ijinfomgt.2009.12.001](http://dx.doi.org/10.1016/j.ijinfomgt.2009.12.001)


