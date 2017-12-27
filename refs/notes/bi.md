

# What is BI?

Business intelligence (BI) systems are a type of [management information system (MIS)](https://jtkovacs.github.io/refs/information-systems.html#types-of-mis) that supports managerial (strategic and operational) decision-making. Sharda et al. (2014) offer the “business pressures-responses-support” model of BI, in which:

- The business environment supplies pressures and opportunities (see [PESTEL analysis](./project-management.html#pestel-analysis) and [management notes\);](https://jtkovacs.github.io/refs/management.html)
- Managers need to respond (different possibilities, Sharda et al. [2014, p. 7]: "reactive, anticipative, adaptive, and proactive");
- BI supports their response/decision with analysis and predictions.



## Generic BI system architecture

<img src="../illos/bi-arch.jpg" width="600">

### Food system metaphor

![](../illos/bi-food-metaphor.png)




## Does BI have value?

In theory, BI adds value by improving decisions. BI may enable organizations to answer their questions faster, or to pose new questions and gain new insights. Faster answers may support faster actions; new insights may indicate and/or support new courses of action. But very clearly, the value of BI depends on (1) the **quality of the data** being fed into the system; (2) the **quality of the analysis** performed on the data; (3) the **capacity to turn analysis into decisions,** and most fundamentally, (4) the **capacity to act on decisions.** (Senge's concept of a learning organization is relevant here---it is an organization that can _not only_ make and act on decisions, but also reflect on outcomes and improve them through iteration.)





## History of BI

- [use of info to support decisions]
- [use of computers to support decisions]
- Executive and management information systems
- BI systems enabling broader access to data, closer to ground-level where people can base their actions on it

<img src="../illos/DSS-evolution.jpg" width="600">

![](../illos/bi-tools-by-value.jpg)




## Trends in BI

Per Sharda et al. (2014):

- Location-based analytics
    - Geospatial analytics
    - Real-time location intelligence
- Analytics for consumers
- Recommendation engines
- Web 2.0
    - Social networking
- Cloud-computing
- Ethics in decision-making
- Privacy impacts of BI

Also:

- IoT
- Big Data
- Data democratization








# BI systems

Per Sharda et al. (2004), BI tools provide varying combinations of the following broad functionalities:

- data storage
- data management
- business performance management
- UI

Gartner's Magic Quadrant for BI and Analytics Platforms (Sallam et al., 2017) compares software across the following capabilities:

- **"Infrastructure**
    - ***BI Platform Administration, Security and Architecture.*** Capabilities that enable platform security, administering users, auditing platform access and utilization, optimizing performance and ensuring high availability and disaster recovery.
    - ***Cloud BI.*** Platform-as-a-service and analytic-application-as-a-service capabilities for building, deploying and managing analytics and analytic applications in the cloud, based on data both in the cloud and on-premises.
    - ***Data Source Connectivity and Ingestion.*** Capabilities that allow users to connect to structured and unstructured data contained within various types of storage platforms, both on-premises and in the cloud.
- **Data Management**
    - ***Metadata Management.*** Tools for enabling users to leverage a common SOR semantic model and metadata. These should provide a robust and centralized way for administrators to search, capture, store, reuse and publish metadata objects such as dimensions, hierarchies, measures, performance metrics/key performance indicators (KPIs), and report layout objects, parameters and so on. Administrators should have the ability to promote a business-user defined data mashup and metadata to the SOR metadata.
    - ***Self-Contained Extraction, Transformation and Loading (ETL) and Data Storage.*** Platform capabilities for accessing, integrating, transforming and loading data into a self-contained performance engine, with the ability to index data and manage data loads and refresh scheduling.
    - ***Self-Service Data Preparation.*** "Drag and drop" user-driven data combination of different sources, and the creation of analytic models such as user-defined measures, sets, groups and hierarchies. Advanced capabilities include machine-learning-enabled semantic autodiscovery, intelligent joins, intelligent profiling, hierarchy generation, data lineage and data blending on varied data sources, including multistructured data.
- **Analysis and Content Creation**
    - ***Embedded Advanced Analytics.*** Enables users to easily access advanced analytics capabilities that are self-contained within the platform itself or through the import and integration of externally developed models.
    - Analytic Dashboards. The ability to create highly interactive dashboards and content with visual exploration and embedded advanced and geospatial analytics to be consumed by others
    - ***Interactive Visual Exploration.*** Enables the exploration of data via an array of visualization options that go beyond those of basic pie, bar and line charts to include heat and tree maps, geographic maps, scatter plots and other special-purpose visuals. These tools enable users to analyze and manipulate the data by interacting directly with a visual representation of it to display as percentages, bins and groups.
    - ***Smart Data Discovery.*** Automatically finds, visualizes and narrates important findings such as correlations, exceptions, clusters, links and predictions in data that are relevant to users without requiring them to build models or write algorithms. Users explore data via visualizations, natural-language-generated narration, search and NLQ technologies.
    - ***Mobile Exploration and Authoring.*** Enables organizations to develop and deliver content to mobile devices in a publishing and/or interactive mode, and takes advantage of mobile devices' native capabilities, such as touchscreen, camera and location awareness.
- **Sharing of Findings**
    - ***Embedding Analytic Content.*** Capabilities including a software developer's kit with APIs and support for open standards for creating and modifying analytic content, visualizations and applications, embedding them into a business process and/or an application or portal. These capabilities can reside outside the application, reusing the analytic infrastructure, but must be easily and seamlessly accessible from inside the application without forcing users to switch between systems. The capabilities for integrating BI and analytics with the application architecture will enable users to choose where in the business process the analytics should be embedded.
    - ***Publish, Share and Collaborate on Analytic Content.*** Capabilities that allow users to publish, deploy and operationalize analytic content through various output types and distribution methods, with support for content search, scheduling and alerts. Enables users to share, discuss and track information, analysis, analytic content and decisions via discussion threads, chat and annotations.
- **Overall platform capabilities**
    - ***Platform Capabilities and Workflow.*** This capability considers the degree to which capabilities are offered in a single, seamless product or across multiple products with little integration.
    - ***Ease of Use and Visual Appeal.*** Ease of use to administer and deploy the platform, create content, consume and interact with content, as well as the visual appeal."

## Implementing BI systems

### Common problems with BI initiatives

Per Sharda et al. (2014, pp. 73-74):

- "Starting with the wrong sponsorship chain
    - _... or offending sponsors by implying deficiencies in their decision-making_
- Setting expectations that you cannot meet
- Loading the warehouse with information just because it is available
- Believing that data warehouse database design is the same as transactional database design
- Choosing a data warehouse manager who is technology oriented rather than user oriented
- Focusing on traditional internal record-oriented data and ignoring the value of external data and of text, images, and, perhaps, sound and video
- Delivering data with overlapping and confusing definitions
- Believing promises of performance, capacity, and scalability [w/r/t BI software purchases]
- Believing that your problems are over when the data warehouse is up and running
- Focusing on ad hoc data mining and periodic reporting instead of alerts"

### Scoping BI systems

#### Big Data

- big-data.html
- https://jtkovacs.github.io/refs/databases.html#nosql-databases
- https://jtkovacs.github.io/refs/information-systems.html#what-is-big-data

#### Real-time BI

Per Sharda et al. (2014, p. 81):

| Traditional DW Environment | Active DW Environment |
| --- | --- |
| Strategic decisions only | Strategic and tactical decisions |
| Results sometimes hard to measure | Results measured with operations |
| Daily, weekly, monthly data currency acceptable; summaries often appropriate | Only comprehensive detailed data available within minutes is acceptable |
| Moderate user concurrency | High number (1000 or more) of users accessing and querying the system simultaneously |
| Highly restrictive reporting used to confirm or check existing processes and patterns; often uses predeveloped summary tables or data marts | Flexible ad hoc reporting, as well as machine-assisted modeling (e.g., data mining) to discover new hypotheses and relationships |
| Power users, knowledge workers, internal users | Operational staffs, call centers, external users |






## ETL

Data must be **extracted** from operational systems; **transformed** so that it is clean, conformant with data quality standards, and aligned with the logical structure of the data warehouse; and finally **loaded** into the data warehouse. Per Sharda et al. (2014), important factors to consider in selecting ETL tools:

- Integration with data sources
- Automatic metadata capture
- Conformance with open standards
- Easy-to-use interfaces for developers and users






## Data warehousing

A data warehouse is a data store that is used to

- free up resources by removing data from operational systems;
- create a trustworthy, safe, and persistent archive of data;
- clean and aggregate data so that it can be easily analyzed.

Per Sharda et al., many data warehouses have the following characteristics:

- **Subject-oriented** (i.e., conceptually curated)
- **Integrated** (combining data across operational systems)
- **Time variant** (storing data in a way that allows time series analysis)
- **Nonvolatile** (protected from edits)

### Why a data warehouse?

Per Sharda et al. (2014, p. 47):

- Reduced infrastructure expense
- Better compliance
- Easier for IT/IS to be maintained
- Reduced warranty expense
- Improved quality (identifying and prioritizing issues faster)
- Combines data, enabling construction of a more accurate and comprehensive picture of the organization

### Dimensional modeling

Dimensional modeling is data modeling to optimize retrieval (read rather than write). **Star schema** (denormalized) and **snowflake schema** (normalized) are common.

### Various data warehouse architectures

- **(In)dependent data mart:** A data mart serves a single department or focuses on a single area; it is conceptually confined. If dependent, the data mart is a subset of a broader data warehouse.
- **Data mart bus architecture:** Dimensionalized data marts linked by conformed dimensions (Ralph Kimball: "plan big, build small").
- **Hub-and-spoke architecture:** Normalized relational data warehouse, serving dependent data marts (Bill Inmon; top-down approach).
- **Centralized data warehouse:** [As above.](https://jtkovacs.github.io/refs/bi.html#generic-bi-architecture)
- **Federated data warehouse:** Existing data warehouses, marts and legacy systems are mapped together and/or physically integrated.
- **Operational data store:** An ODS has fresh data, to support immediate and short-term decision-making. It does not fulfill the traditional DW's role of storing data and enabling analysis across long periods of time.
- **Oper marts:** ODS for multidimensional analysis.

#### Choosing an architecture

Per Sharda et al. (2014):

- Which database management system (DBMS) should be used? Should it be relational?
- For scalability and speed, will parallel processing be required? Will tables need to be partitioned?
- How much data should be migrated into the new DW, and will this require special tools?
- What additional tools or integrations will be needed to support data retrieval?
- What additional tools or integrations will be needed to support data analysis?

More factors, from Ariyachandra and Watson (2005) qtd in Sharda et al. (2014, p. 55):

- Information interdependence between organizational units
- Upper management's information needs
- Nature of end-user tasks
- Constraints on reqources
- Compatability with existing systems
- Perceived ability/capacity of in-house IT staff






## OLAP

"Simply, OLAP is an approach to quickly answer ad hoc questions by executing multidimensional analytic queries against organizational data repositories" (Sharda et al., 2014, p. 69). The disctinction between [transaction](https://jtkovacs.github.io/refs/databases.html) and analytics databases arises from the current state of computer science, viz., you must optimize for either reads or writes. In addition to this basic distinction, there are [subtypes of OLAP databases](http://olap.com/types-of-olap-systems/) (HTAP, MOLAP, ROLAP, etc.) with varying functionality.

| Name | AKA | Function | Goals |
| --- | --- | --- | --- |
| **OLTP** | operational database | captures each record: emails, credit card transactions, webpage views, … | efficiency, control |
| **OLAP** | data warehouse | ops --> data warehouse --> OLAP --> UI/dashboard | aggregation, efficiency, accuracy, access |

To enable OLAP, data is stored in multidimensional cubes. These cubes can be efficiently **sliced** on a single dimension or **diced** on several; a user can **drill down** or up for different levels of detail; a user can **roll-up** a dimension, running calculations on it and its relationships; and a user may **pivot** to "change the dimensional orientation of a report or ad hoc query-display page" (Sharda et al., 2014, p. 71).







## Interpreting the data

### Analytic roles

#### Business analysts

BA is a field, and its practitioners---business analysts---are perhaps the frontline users of data from BI systems; they play a major role in translating this data into action by relating it back to business processes and decisions.  [BABOK](https://en.wikipedia.org/wiki/A_Guide_to_the_Business_Analysis_Body_of_Knowledge) is the gold standard description of BA skills, but Brandenberg (n.d.) offers the following short version:

- CORE SKILLS
    - **Communication skills**
        - Writing & face-to-face communication
        - Listening & asking good questions
    - **Problem-solving skills**
    - **Critical-thinking skills**
- ADVANCED SOFT SKILLS
    - **Relationship-building** for stakeholder participation and appeal
    - **Self-management**
    - **Thick skin** for participatory design work
- CORE BA SKILLS
    - **Facilitation & elicitation** as part of the design process
    - **Analysis of:**
        - "how the **business** work flows operationally, often completed by analyzing the business process";
        - "how the **software system** supports the business workflows, often completed through functional requirements models like use cases or user stories";
        - "how **data and information** is stored and maintained by an organization, completed using a variety of data modeling techniques"
    - **Documentation, specification, and visual modeling**
    - **Business analysis tools** e.g.
        - *Office* - Word, Excel, PowerPoint
        - *Modeling* - Visio, Enterprise Architect
        - *Requirements Management* - DOORS, Caliber
        - *Project Management*
        - *Quality Management*
- ADVANCED BA SKILLS
    - **Technical** e.g. SQL, .NET, Perl, Python, etc.
    - **Methodology** e.g. Agile, Six Sigma, BPMN, Rational Unified Process, etc.
    - **Industry/Domain**

#### Data scientists

(see [notes on data science](https://jtkovacs.github.io/refs/data-science.html) for an overview of data science skills)

Versus BI and BA:

- DS involves more programming, is better at using computational power for analysis
- DS may involve more sophisticated modeling, facilitating more predictive and prescriptive analytics
- Because DS uses computers, it loses the context awareness that human actors supply in their interactions with BI and must recreate it somehow (for instance in training machine learning algorithms)

### Analytic deliverables

Per Sharda et al. (2014):

- **Descriptive:** Asking what happened or is happening to generate well-defined business problems and opportunities; also provides answers to simple questions
- **Predictive:** Asking what’s going to happen and why, to generate accurate projections that can inform analyses
- **Prescriptive:** Asking what should be done and generating (or even executing) a specific solution

According to Sharda et al. (2014) and [summarized here,](https://amitadeshpande.blogspot.com/2012/09/eight-levels-of-analytics-model-by-sas.html) SAS published a white paper describing different "levels" of analytics:

<table style="font-size: 9px;">
    <tr><th>Standard Reporting</th>
        <td style="text-align:left;"><ul>
                <li>Historical perspective</li>
                <li>Standard KPI or data parameters</li>
                <li>Focused on short-term goals and objectives</li>
            </ul></td></tr>
    <tr><th>Customized Reporting</th>
        <td style="text-align:left;"><ul>
                <li>Flexible reporting</li>
                <li>Focused on problem solving</li>
                <li>Historical perspective</li>
            </ul></td></tr>
    <tr><th>Drill down analysis</th>
        <td style="text-align:left;"><ul>
                <li>Root cause analysis</li>
                <li>Stratification analysis</li>
                <li>Used exensively in <a href="http://asq.org/learn-about-quality/six-sigma/overview/dmaic.html">DMAIC processes</a></li>
            </ul></td></tr>
    <tr><th>Alerts & Notifications</th>
        <td style="text-align:left;"><ul>
                <li>Management by exception</li>
                <li>Pre-defined business process</li>
                <li>Real-time feedback</li>
            </ul></td></tr>
    <tr><th>Statistical Analysis</th>
        <td style="text-align:left;"><ul>
                <li>Correlation analysis</li>
                <li>Discriminant analysis</li>
                <li>Regression analysis</li>
            </ul></td></tr>
    <tr><th>Forecasting</th>
        <td style="text-align:left;"><ul>
                <li>Trends</li>
                <li>Pattern recognition</li>
                <li>Decision-making capability</li>
            </ul></td></tr>
    <tr><th>Predictive Modeling</th>
        <td style="text-align:left;"><ul>
                <li>Prognostics</li>
                <li>Data-driven decisions</li>
            </ul></td></tr>
    <tr><th>Optimization</th>
        <td style="text-align:left;"><ul>
                <li>Enable innovation</li>
                <li>Continuous improvement</li>
                <li>Adaptive feedback</li>
            </ul></td></tr>
</table>

#### Business Performance Management (BPM)

BPM entails measuring and improving _actual performance_ versus KPIs and goals that have been established in correspondance with [managerial strategy](https://jtkovacs.github.io/refs/management.html#strategy) or local appetite; see [notes on performance management](https://jtkovacs.github.io/refs/performance-management.html) for further discussion. BPM intersects with BI because it is one of the primary intended uses of BI data---to understand and improve operations. The content of BI dashboards may be stongly determined by performance management goals and techniques.

#### Data viz & visual analytics

Per Sharda et al. (2014, pp. 114-116), data visualization is increasingly important capability of BI software because it makes meaning in the data more accessible to more users; and 'visual analytics' is a new term meant to describe data or information visualization that goes beyond description to the realm of business analytics: "diagnostic (i.e. prescriptive and predictive)".

- Different visualization techniques
- https://jtkovacs.github.io/refs/data-viz.html
- data-viz.html#tableau

#### Data mining

- versus statistics
- https://jtkovacs.github.io/refs/machine-learning.html
- https://jtkovacs.github.io/refs/statistics.html

#### Text & web analytics

- https://jtkovacs.github.io/refs/text-analytics.html





## Reporting

Sharda et al. call reporting "an essential part of the larger drive toward improved managerial decision making and [organizational knowledge management"](km.html) and credit it with serving multiple **internal functions:**

- "To ensure that all departments are functioning properly
- To provide information
- To provide the results of an analysis
- To persuade others to act
- To create an organizational memory"

### Types of reports

Per Sharda et al. (2014, pp. 99-100), a report is "any communication artifact prepared with the specific intention of conveying information in a presentable form to whoever needs it"---which, in a business context, includes "memos, minutes, lab reports, sales reports, progress reports, justification reports, compliance reports, annual reports, and policies and procedures" (I object to the inclusion of policies and procedures in this list, because I would call them [documentation\).](https://jtkovacs.github.io/refs/docs.html)

Reports can be for internal or external audiences, and prepared on a periodic or ad hoc basis. Regarding external reporting, the Data Foundation's [Standard Business Reporting](http://www.datafoundation.org/standard-business-reporting-2017/) effort is an attempt to reduce reporting costs by standardizing national and international governmental reporting requirements.

| Type | Purpose | Length | Timing | Audience | Tone |
| --- | --- | --- | --- | --- | --- |
| Informal | ... | < 10 pgs. | Periodic/routine | Internal | Personal pronouns & contractions OK |
| Formal | Communicate results of deeper research/analysis | 10-100 pgs. | ... | Varies | Formal language; table of contents, executive summary |
| Short | "investigative, compliance, and situational focused" | (short) | Often periodic | Varies | Factual |

Sharda et al. (2014) cite Hill's (2013) typology of business reports:

- **Metric management reports** that track performance versus ***SLAs*** (service-level agreements with external partners) or ***KPIs*** (key performance indicators for internal strategic and operational targets); often used with Six Sigma or Total Quality Management (TQM)
- **Balanced scorecard-type reports** from Kaplan and Norton, adding "customer, business process, and learning and growth perspectives" alongside financial performance
- **Dashboard-type reports:** arrange multiple performance indicators as a dashboard (see [notes on dashboard design\)](https://jtkovacs.github.io/refs/interfaces.html#reporting-dashboards)

#### Dashboards

See [notes on dashboard design](https://jtkovacs.github.io/refs/interfaces.html#reporting-dashboards)

### Best practices for reporting

- Per Sharda et al. (2014, p. 100): "clarity, brevity, completeness, and correctness"
- Sharda et al. cite Hill (2008) on the importance of "an overarching **assurance** process that covers the entire value chain and moves back and forth, enrusing that reporting requirements and information delivery are properly aligned"
- See [notes on graphic design](https://jtkovacs.github.io/refs/graphics-viz.html) re: layout

#### Data storytelling

From Sharda et al. (2014, p. 117), to present data as a story, ask: _"Who are the **characters?** What is the drama or **challenge?** What hurdles have to be overcome? And at the end of your story, what do you want your audience to **do** as a result?_ (connect your 'call to action' with existing managerial conversations, if possible). They also cite Fink and Moore (2012):

- "Think of your analysis as a story---use a story structure.
- Be authentic---your story will flow.
- Be visual---think of yourself as a film editor.
- Make it easy for your audience and you.
- Invite and direct discussion."









# Sources

## Cited

Brandenberg, L. (n.d.) What Business Analyst skills are important for a new BA? Retrieved from [http://www.bridging-the-gap.com/business-analyst-skills-important/](http://www.bridging-the-gap.com/business-analyst-skills-important/)

Fink, E., & Moore, S. J. (2012). Five best practices for telling great stories with data. Tableau Software, Inc. Retrieved from [http://tableausoftware.com/whitepapers/telling-stories-with-data](http://tableausoftware.com/whitepapers/telling-stories-with-data)

Sallam, R, L., Howson, C., Idoine, C. J., Oestreich, T. W., & Laurence, J. (2017). Magic Quadrant for Business Intelligence and Analytics Platforms. Gartner. Retrieved from [https://cdn2.hubspot.net/hubfs/2172371/Q1%202017%20Gartner.pdf?t=149626062](https://cdn2.hubspot.net/hubfs/2172371/Q1%202017%20Gartner.pdf?t=149626062)

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

## References

## Read

- [UW IT - EDW 101](http://itconnect.uw.edu/work/data/training/workshops/#EDW101)
- [MapReduce - Simplified Data Processing on Large Clusters](http://research.google.com/archive/mapreduce.html)
- [Parallel MapReduce in Python in 10 Minutes](https://mikecvet.wordpress.com/2010/07/02/parallel-mapreduce-in-python/)
- [Big Data, n. A kind of black magic](http://www.talyarkoni.org/blog/2014/05/19/big-data-n-a-kind-of-black-magic/)

## Unread

- _The Data Warehouse Lifecycle Toolkit_
- _The Data Warehouse Toolkit_
- _The Data Warehouse ETL Toolkit_
- [Demystifying data warehouses, lakes, and marts](https://www.sisense.com/blog/demystifying-data-warehouses-data-lakes-data-marts/)
- [Difference between database, data warehouse, data lake, and data cube?](https://www.quora.com/What-are-the-differences-between-a-database-data-mart-data-warehouse-a-data-lake-and-a-cube)
- [Data lake versus data warehouse](http://www.kdnuggets.com/2015/09/data-lake-vs-data-warehouse-key-differences.html)
- [No, Hadoop isn't going to replace your data warehouse](http://timoelliott.com/blog/2014/04/no-hadoop-isnt-going-to-replace-your-data-warehouse.html)
- [From data lakes to data swamps](http://timoelliott.com/blog/2014/12/from-data-lakes-to-data-swamps.html)
- [Business 104 - Information Systems and Computer Applications](http://study.com/academy/course/information-systems-and-computer-applications.html)
- [MapReduce](http://wiki.apache.org/hadoop/HadoopMapReduce)
- [Writing a Hadoop MapReduce Job In Python](http://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/)
- [What MapReduce can’t do](http://www.analyticbridge.com/profiles/blogs/what-mapreduce-can-t-do)
- [Practical illustration of Map-Reduce (Hadoop-style), on real data](http://www.ap-institute.com/big-data-articles/big-data-what-is-spark-an-explanation-for-anyone.aspx)
- [What is Spark?](http://www.ap-institute.com/big-data-articles/big-data-what-is-spark-an-explanation-for-anyone.aspx)
- [What is Hadoop?](http://www.ap-institute.com/big-data-articles/big-data-what-is-hadoop-%E2%80%93-an-explanation-for-absolutely-anyone.aspx)
- [Spark or Hadoop — Which is the best big data framework?](http://www.forbes.com/sites/bernardmarr/2015/06/22/spark-or-hadoop-which-is-the-best-big-data-framework/#5928d0cd532c)
- [Hadoop Fundamentals](http://www.lynda.com/Hadoop-tutorials/Hadoop-Fundamentals/191942-2.html)
- [AWS](http://www.lynda.com/Amazon-Web-Services-tutorials/Amazon-Web-Services-Data-Services/383048-2.html)
- [Modern Enterprise Data Environment](http://www.lynda.com/Data-management-tutorials/Building-Modern-Enterprise-Data-Roadmap/420016-2.html?srchtrk=index%3a1%0alinktypeid%3a2%0aq%3amodern+enterprise+data+environment%0apage%3a1%0as%3arelevance%0asa%3atrue%0aproducttypeid%3a2)
- [Hadoop Fundamentals](http://bigdatauniversity.com/courses/hadoop-course/)
- [Hadoop Reporting &amp; Analysis](http://bigdatauniversity.com/courses/hadoop-reporting-and-analysis/)
- [Integrated Analytics: Platforms and Principles for Centralizing Your Data](https://drive.google.com/open?id=0B6XYyy1UbJ3XU0psbHFkd1ZCdXc)
- [Big data analysis with Revolution R Enterprise](https://www.datacamp.com/community/open-courses/big-data-revolution-r-enterprise-tutorial#gs.O46fnBg)
- [When data flows faster than it can be processed](http://www.bigdatanews.com/profiles/blogs/when-data-flows-faster-than-it-can-be-processed)
- [Making sense of stream processing](https://www.oreilly.com/learning/making-sense-of-stream-processing)
- [Why Python is slow](https://jakevdp.github.io/blog/2014/05/09/why-python-is-slow/)
- [Fast clustering algorithms for massive datasets](http://www.bigdatanews.com/profiles/blogs/fast-clustering-algorithms-for-massive-datasets)
- [Why and how you should build a data dictionary for big datasets](http://www.analyticbridge.com/profiles/blogs/why-and-how-you-should-build-a-data-dictionary-for-big-data-sets)
- [Database key terms](http://www.kdnuggets.com/2016/07/database-key-terms-explained.html)
- [Data governance](https://en.wikipedia.org/wiki/Data_governance)
- [Data steward](https://en.wikipedia.org/wiki/Data_steward)
- [Data custodian](https://en.wikipedia.org/wiki/Data_custodian)
- [Governed data discovery](https://www.betterbuys.com/bi/governed-data-discovery/)
- [In Search of Database Nirvana](https://drive.google.com/open?id=0B6XYyy1UbJ3XeXlnOW11bzVqc2c)
- [Data stack at Slack](https://slack.engineering/data-wrangling-at-slack-f2e0ff633b69?imm_mid=0eb8e0#.wyh01fwh4)
- [Data stack at Blue Apron](https://bytes.blueapron.com/bigquery-delivers-for-blue-apron-9acef1c1b417#.jbicbta5v)
- [What is ETL?](http://www.webopedia.com/TERM/E/ETL.html)