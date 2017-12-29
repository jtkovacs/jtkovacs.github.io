<p class="path"><a href="../pkb.html">pkb contents</a> \> big data | just under 399 words | updated 12/29/2017</p><div class="TOC">- &nbsp;1. [What is Big Data?](#what-is-big-data)
	- &nbsp;1.1. [What is high-performance computing?](#what-is-high-performance-computing)
	- &nbsp;1.2. [What is data science?](#what-is-data-science)
		- &nbsp;1.2.1. [Required skills](#required-skills)
	- &nbsp;1.3. [Business applications of Big Data analytics](#business-applications-of-big-data-analytics)
	- &nbsp;1.4. [Implementing Big Data initiatives](#implementing-big-data-initiatives)
		- &nbsp;1.4.1. [When Big Data versus data warehousing?](#when-big-data-versus-data-warehousing)
		- &nbsp;1.4.2. [Success factors for Big Data initiatives](#success-factors-for-big-data-initiatives)
		- &nbsp;1.4.3. [Challenges with Big Data initiatives](#challenges-with-big-data-initiatives)
- &nbsp;2. [Tools](#tools)
	- &nbsp;2.1. [Storage](#storage)
		- &nbsp;2.1.1. [Hadoop](#hadoop)
			- &nbsp;2.1.1.1. [Why use Hadoop?](#why-use-hadoop)
			- &nbsp;2.1.1.2. [Hadoop components](#hadoop-components)
				- &nbsp;2.1.1.2.1. [HDFS](#hdfs)
				- &nbsp;2.1.1.2.2. [Name node](#name-node)
				- &nbsp;2.1.1.2.3. [Secondary node](#secondary-node)
				- &nbsp;2.1.1.2.4. [Job tracker](#job-tracker)
				- &nbsp;2.1.1.2.5. [Slave nodes](#slave-nodes)
			- &nbsp;2.1.1.3. [Hadoop suprojects](#hadoop-suprojects)
		- &nbsp;2.1.2. [NoSQL databases](#nosql-databases)
	- &nbsp;2.2. [Big Data analytics](#big-data-analytics)
		- &nbsp;2.2.1. [MapReduce](#mapreduce)
		- &nbsp;2.2.2. [Data stream mining](#data-stream-mining)
			- &nbsp;2.2.2.1. [Critical event processing](#critical-event-processing)
			- &nbsp;2.2.2.2. [Data stream mining versus perpetual analytics](#data-stream-mining-versus-perpetual-analytics)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>













# 1. What is Big Data?

**Interesting how, in some presentations, the Vs are defined as _challenges_ associated with Big Data, whereas in other presentations they are all treated as _benefits_ particular to Big Data**

Volume

Variety

Velocity

Veracity

Variability

Value proposition

## 1.1. What is high-performance computing?

In-memory analytics

In-database analytics

Grid computing

Appliances




## 1.2. What is data science?

(responsibilities)

### 1.2.1. Required skills




## 1.3. Business applications of Big Data analytics

pp. 287

... stream analytics specifically, pp. 317-321




## 1.4. Implementing Big Data initiatives

### 1.4.1. When Big Data versus data warehousing?

- Use cases for one or either

### 1.4.2. Success factors for Big Data initiatives

pp. 285 & 312

### 1.4.3. Challenges with Big Data initiatives

pp. 286-287










# 2. Tools




## 2.1. Storage



### 2.1.1. Hadoop

#### 2.1.1.1. Why use Hadoop?

#### 2.1.1.2. Hadoop components

##### 2.1.1.2.1. HDFS

##### 2.1.1.2.2. Name node

##### 2.1.1.2.3. Secondary node

##### 2.1.1.2.4. Job tracker

##### 2.1.1.2.5. Slave nodes


#### 2.1.1.3. Hadoop suprojects

  - Hive
  - Pig
  - ...



### 2.1.2. NoSQL databases

Per

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

... to store Big Data ...

- large **volume** (petabytes rather than terabytes)
- wide **variety** (structured and unstructured)
- high **velocity**

... achieving greater speed by:

- appending rather than updating records, and
- denormalizing data upon input.





- MongoDB
- Cassandra
- CouchDB





## 2.2. Big Data analytics

### 2.2.1. MapReduce

### 2.2.2. Data stream mining

#### 2.2.2.1. Critical event processing

#### 2.2.2.2. Data stream mining versus perpetual analytics



















# 3. Sources

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.



## 3.1. Cited

## 3.2. References

## 3.3. Read

## 3.4. Unread
