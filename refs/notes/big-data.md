



# What is Big Data?

Per Sharda et al. (2014, pp. 280-282):

**Volume**

| Year | Estimated World Data |
| --- | --- |
| 2009 | 0.8 ZB |
| 2010 | >1 ZB |
| 2011 | 1.8 ZB
| 2020 | 35 ZB |

- Kilobyte (kB) = 10<sup>3</sup>
- Megabyte (MB) = 10<sup>6</sup>
- Gigabyte (GB) = 10<sup>9</sup>
- Terabyte (TB) = 10<sup>12</sup>
- Petabyte (PB) = 10<sup>15</sup>
- Exabyte (EB) = 10<sup>18</sup>
- Zettabyte (ZB) = 10<sup>21</sup>
- Yottabyte (YB) = 10<sup>24</sup>

**Variety** (in format; about 80-85% unstructured)

- RDBMS, hierachical data stores, OLAP
- text documents, email
- XML, HTML
- meter-collected, sensor-captured data
- video, audio
- stock ticker

**Velocity**

- increased speed of data **production** ("RFID tags, automated sensors, GPS devices, and smart meters are driving an increasing need to deal with torrents of data in near-real time")
- **demand** for quicker data processing, i.e. [data stream mining](#data-stream-mining)

**Veracity**

- coined by IBM
- "conformity with facts: accuracy, quality, truthfulness, or trustiworthiness"

**Variability** ("Daily, seasonal, and event-driven peak data loads")

**Value** (one hopes)




## Sources of Big Data

"Web logs, RFID, GPS systems, sensor networks, social networks, Internet-based text documents, Internet search indexes, detail call records, astronomy, atmospheric science, biology, genomics, nuclear physics, biochemical experiments, medical records, scientific research, military surveillance, photography archives, video archives, and large-scalre e-commerce practices" (Sharda et al., 2014, pp. 278-280).






## Business applications of Big Data

Sharda et al. (2014, pp. 287):

... stream analytics specifically, pp. 317-321:

Per Zhu et al. (2014, pp. 16-17), there are four categories of business goals that companies may fruitfully pursue with Big Data:

*REVENUE*

- **Monetize big data:** Design and execute big data analytics use cases that increase revenue, lower costs, or reduce risk.
- **Manage big data at a low cost:** Demonstrate cost savings of big data analytics styles for both MapReduce clusters and real-time analytics.
- **Improve efficiency in business operations:** Develop insight about the value of specific business processes, such as enterprise resource planning (ERP), supply chain management (SCM), and customer relationship management (CRM).

*CUSTOMER SERVICES*

- **Improve customer understanding (360-degree view of the customer):** Mine all sources of client experience and interaction from additional unstructured and semi-structured data types using real-time and batch (Hadoop) analytics.
- **Obtain behavioral insight into client transactions:** | What led to a certain business transaction? Why did the client choose us? What else can we deduce about a client’s buying behavior?
- **Attract and retain customers:** Mine and apply insight toward marketing and sales effectiveness with clients, customers, and customer support personnel.
- **Fraud detection and claims processing:** Derive and exploit additional insight from data types not previously analyzed for anti-fraud and claims processing.

*BUSINESS DEVELOPMENT*

- **Introduce new products or services:** Thanks to your new insight about target market preferences, new products and services will have higher adoption rates by the target clientele.
- **Outsource non-core functions:** Decide what to outsource without affecting the customer experience.
- **Pursue mergers, acquisitions, and divestitures:** Gather and consider marketplace insights about the potential impact of mergers, acquisitions, and divestitures.
- **Gain new competitive insights:** Mine all sources of information, even non-traditional sources of information, to learn about the brand perception of the company by its customers, its reputation, and its industry ranking. | Define metrics for improvement that are achievable if based on better insight.

*BUSINESS AGILITY & GOVERNANCE*

- **Increase business agility:** Mine real-time events for trends and apply the insight to transactions and interactions with customers.
- **Plan with greater confidence:** Build better scenario-based analysis models.
- **Make better decisions faster:** Harvest better insights from both batch (Hadoop) and real-time events and rapidly make them available to decision makers.
- **Ensure regulatory compliance:** Improve your understanding of the current regulatory climate and expectations of auditors.
- **Lower risk:** Improve the cost-benefit analysis of various risks (regulatory, market, credit, counter-party operational, and so on).




## Implementing Big Data initiatives

### Big Data maturity model

Per Zhu et al. (2014, p. 26):

![](../illos/big-data-maturity.png)



### When Big Data versus data warehousing?

- Use cases for one or either



### Success factors for Big Data initiatives


Sharda et al. (2014, pp. 285-286) cite Watson's (2012) "critical success factors" as follows:

- "A clear business need (alignment with the vision and the strategy)"
- "Strong, committed sponsorship (executive champion)"
- "Alignment between the business and IT strategy"
- "A fact-based decision-making culture ... also a culture of experimentation"
- "A strong data infrastructure"


pp. 312


### Challenges with Big Data initiatives

pp. 286-287



















# Big Data technologies







## High-performance computing

In-memory analytics

In-database analytics

Grid computing

Appliances






## Generic Big Data architectures

Per Zhu et al. (2014, p. 6):

![](../illos/big-data-arch1.png)

Per AsterData, cited in Sharda et al. (2014, p. 283):

![](../illos/big-data-arch2.jpg)

Per Tetadata, their landscape of products AKA [Unified Data Architecture:](https://www.teradata.com/Solutions-and-Industries/unified-data-architecture)

![](big-data-arch3.jpg)





## Big Data storage

### Hadoop

#### Why use Hadoop?




#### Hadoop components

##### HDFS

##### Name node

##### Secondary node

##### Job tracker

##### Slave nodes



#### Hadoop suprojects

  - Hive
  - Pig
  - ...



### What are NoSQL databases?

Per Connolly and Begg (2015):

NoSQL databases use non-relational data models ...

- **Key-value model,** e.g. Dynamo, Riak, Basho: _[Key|Value|Timestamp]._ Provides easy and fast storage for simple data.
- **Columnar model,** e.g. Google’s Bigtable, Apache’s HBase (part of Hadoop): _[Row Key|Value|Timestamp|Column Family|Column Name]._ Good for retaining relationships (since columns can be grouped into families).
- **Document model,** e.g. MongoDB, JSON, XML. Good for storing complex hierarchical relationships.
- **Graph/triple model,** e.g. Neo4j. Good for capturing a web of relationships.

... plus some of these other features ...

- Open source & less costly hardware
- Distributed storage and processing rather than client/server architecture
- Memory cache
- Batch processing (Google Map Reduce) or interactive AKA stream processing (Apache Tez Framework, Apache Spark, Facebook Presto)
- Proprietary and/or (for Presto, Hive QL, Pig, Cassandra Query Language (CQL), Cosmos/Scope) SQL-like interfaces
- Analytics integration (Hive, Amazon’s Redshift, Facebook’s Presto, Airbnb’s Airpal)

... to store Big Data, achieving better performance by:

- **appending** rather than updating records, and
- **denormalizing** data upon input

#### NoSQL database software

- MongoDB
- Cassandra
- CouchDB





## Big Data analytics

See [notes on data science.](https://jtkovacs.github.io/refs/data-science.html)

### MapReduce




### Data stream mining

(AKA in-motion analytics)

#### Critical event processing

#### Data stream mining versus perpetual analytics



















# Sources

## Cited

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

Zhu, W-D., Gupta, M., Kumar, V., Perepa, S., Sathi, A., & Statchuk, C. (2014). Building Big Data and analytics solutions in the cloud. IBM Redpaper. Retrieved from [https://www.redbooks.ibm.com/redpapers/pdfs/redp5085.pdf](https://www.redbooks.ibm.com/redpapers/pdfs/redp5085.pdf)

## References

## Read

## Unread
