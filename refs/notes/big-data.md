












# What is Big Data?

**Interesting how, in some presentations, the Vs are defined as _challenges_ associated with Big Data, whereas in other presentations they are all treated as _benefits_ particular to Big Data**

Volume

Variety

Velocity

Veracity

Variability

Value proposition

## What is high-performance computing?

In-memory analytics

In-database analytics

Grid computing

Appliances




## What is data science?

(responsibilities)

### Required skills




## Business applications of Big Data analytics

pp. 287

... stream analytics specifically, pp. 317-321




## Implementing Big Data initiatives

### When Big Data versus data warehousing?

- Use cases for one or either

### Success factors for Big Data initiatives

pp. 285 & 312

### Challenges with Big Data initiatives

pp. 286-287










# Big Data technologies



## Storage

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



### NoSQL databases

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





## Big Data analytics

### MapReduce

### Data stream mining

#### Critical event processing

#### Data stream mining versus perpetual analytics



















# Sources

Connolly, T. & Begg, C. (2015). _Database systems: A practical approach to design, implementation, and management_ (6th ed.). New York City, NY: Pearson Education.



## Cited

## References

## Read

## Unread
