<p class="path"><a href="../pkb.html">pkb contents</a> \> big data | just under 707 words | updated 12/30/2017</p><div class="TOC">- &nbsp;1. [What is Big Data?](#what-is-big-data)
	- &nbsp;1.1. [Sources of Big Data](#sources-of-big-data)
	- &nbsp;1.2. [Business applications of Big Data](#business-applications-of-big-data)
	- &nbsp;1.3. [Implementing Big Data initiatives](#implementing-big-data-initiatives)
		- &nbsp;1.3.1. [Big Data maturity model](#big-data-maturity-model)
		- &nbsp;1.3.2. [When Big Data versus data warehousing?](#when-big-data-versus-data-warehousing)
		- &nbsp;1.3.3. [Success factors for Big Data initiatives](#success-factors-for-big-data-initiatives)
		- &nbsp;1.3.4. [Challenges with Big Data initiatives](#challenges-with-big-data-initiatives)
- &nbsp;2. [Big Data technologies](#big-data-technologies)
	- &nbsp;2.1. [High-performance computing](#high-performance-computing)
	- &nbsp;2.2. [Generic Big Data architectures](#generic-big-data-architectures)
	- &nbsp;2.3. [Big Data storage](#big-data-storage)
		- &nbsp;2.3.1. [Hadoop](#hadoop)
			- &nbsp;2.3.1.1. [Why use Hadoop?](#why-use-hadoop)
			- &nbsp;2.3.1.2. [Hadoop components](#hadoop-components)
				- &nbsp;2.3.1.2.1. [HDFS](#hdfs)
				- &nbsp;2.3.1.2.2. [Name node](#name-node)
				- &nbsp;2.3.1.2.3. [Secondary node](#secondary-node)
				- &nbsp;2.3.1.2.4. [Job tracker](#job-tracker)
				- &nbsp;2.3.1.2.5. [Slave nodes](#slave-nodes)
			- &nbsp;2.3.1.3. [Hadoop suprojects](#hadoop-suprojects)
		- &nbsp;2.3.2. [What are NoSQL databases?](#what-are-nosql-databases)
			- &nbsp;2.3.2.1. [NoSQL database software](#nosql-database-software)
	- &nbsp;2.4. [Big Data analytics](#big-data-analytics)
		- &nbsp;2.4.1. [MapReduce](#mapreduce)
		- &nbsp;2.4.2. [Data stream mining](#data-stream-mining)
			- &nbsp;2.4.2.1. [Critical event processing](#critical-event-processing)
			- &nbsp;2.4.2.2. [Data stream mining versus perpetual analytics](#data-stream-mining-versus-perpetual-analytics)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>




# 1. What is Big Data?

Per Sharda et al. (2014, pp. 280-282):

**Volume**

| Year | Estimated World Data |
| --- | --- |
| 2009 | 0.8 ZB |
| 2010 | >1 ZB |
| 2011 | 1.8 ZB
| 2020 | 35 ZB |

| Name | Symbol | Value |
| --- | --- | --- |
| Kilobyte | kB | 10<sup>3</sup> |
| Megabyte | MB | 10<sup>6</sup> |
| Gigabyte | GB | 10<sup>9</sup> |
| Terabyte | TB | 10<sup>12</sup> |
| Petabyte | PB | 10<sup>15</sup> |
| Exabyte | EB | 10<sup>18</sup> |
| Zettabyte | ZB | 10<sup>21</sup> |
| Yottabyte | YB | 10<sup>24</sup> |

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




## 1.1. Sources of Big Data

"Web logs, RFID, GPS systems, sensor networks, social networks, Internet-based text documents, Internet search indexes, detail call records, astronomy, atmospheric science, biology, genomics, nuclear physics, biochemical experiments, medical records, scientific research, military surveillance, photography archives, video archives, and large-scalre e-commerce practices" (Sharda et al., 2014, pp. 278-280).






## 1.2. Business applications of Big Data

pp. 287

... stream analytics specifically, pp. 317-321








## 1.3. Implementing Big Data initiatives

### 1.3.1. Big Data maturity model

Per Zhu et al. (2014, p. 26):

![](../illos/big-data-maturity.png)

- The Data Warehousing Institute (TDWI). [https://tdwi.org/pages/maturity-model/big-data-maturity-model-assessment-tool.aspx](https://tdwi.org/pages/maturity-model/big-data-maturity-model-assessment-tool.aspx)



### 1.3.2. When Big Data versus data warehousing?

- Use cases for one or either



### 1.3.3. Success factors for Big Data initiatives

pp. 285 & 312



### 1.3.4. Challenges with Big Data initiatives

pp. 286-287



















# 2. Big Data technologies







## 2.1. High-performance computing

In-memory analytics

In-database analytics

Grid computing

Appliances






## 2.2. Generic Big Data architectures

Per Zhu et al. (2014, p. 6):

![](big-data-arch1.png)

Per AsterData, cited in Sharda et al. (2014, p. 283):









## 2.3. Big Data storage

### 2.3.1. Hadoop

#### 2.3.1.1. Why use Hadoop?




#### 2.3.1.2. Hadoop components

##### 2.3.1.2.1. HDFS

##### 2.3.1.2.2. Name node

##### 2.3.1.2.3. Secondary node

##### 2.3.1.2.4. Job tracker

##### 2.3.1.2.5. Slave nodes



#### 2.3.1.3. Hadoop suprojects

  - Hive
  - Pig
  - ...



### 2.3.2. What are NoSQL databases?

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

#### 2.3.2.1. NoSQL database software

- MongoDB
- Cassandra
- CouchDB





## 2.4. Big Data analytics

See [notes on data science.](https://jtkovacs.github.io/refs/data-science.html)

### 2.4.1. MapReduce




### 2.4.2. Data stream mining

(AKA in-motion analytics)

#### 2.4.2.1. Critical event processing

#### 2.4.2.2. Data stream mining versus perpetual analytics



















# 3. Sources

## 3.1. Cited

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.

Sharda, R., Delen, D., & Turban, E. (2014). _Business intelligence: A managerial perspective on analytics_ (3rd ed.). New York City, NY: Pearson.

Zhu, W-D., Gupta, M., Kumar, V., Perepa, S., Sathi, A., & Statchuk, C. (2014). Building Big Data and analytics solutions in the cloud. IBM Redpaper. Retrieved from [https://www.redbooks.ibm.com/redpapers/pdfs/redp5085.pdf](https://www.redbooks.ibm.com/redpapers/pdfs/redp5085.pdf)

## 3.2. References

## 3.3. Read

## 3.4. Unread
