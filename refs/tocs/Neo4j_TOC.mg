<p class="path"><a href="../pkb.html">pkb contents</a> \> Neo4j | nearly 268 words | updated 05/18/2017</p><div class="TOC">- 1. [Neo4j](#neo4j)
- 2. [Cypher](#cypher)
	- 2.1. [Create](#create)
		- 2.1.1. [Nodes](#nodes)
		- 2.1.2. [Relationships (edges)](#relationships-edges)
	- 2.2. [Retrieve](#retrieve)
		- 2.2.1. [Recommend ](#recommend-)
		- 2.2.2. [Analyze queries](#analyze-queries)
</div>
# 1. Neo4j

The **editor** accepts input:

- [Cypher queries](Cypher.html) to work with graph data
- Client-side commands available, e.g. ```:help```
- Run query: `ctrl+enter`
- Multiline command: `shift+enter`

The **stream** displays output:

- Clear stream: `:clear`
- Monitor: `:play sysinfo`

# 2. Cypher

## 2.1. Create

### 2.1.1. Nodes

This makes a node **named** "ee" with **label** "Person" and **attributes** "name", "from", and "klout":

```SQL
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
```

This makes two nodes with different names, the same label ("Person"), and differing attributes:

```SQL
CREATE (js:Person { name: "Johan", from: "Sweden", learn: "surfing" }),
(ir:Person { name: "Ian", from: "England", title: "author" })
```

### 2.1.2. Relationships (edges)

```SQL
CREATE (node_name)-[:RELATIONSHIP_NAME {relationship_attribute: value}] -> (node_name)

CREATE (ee)-[:KNOWS {since: 2001}]->(js), (ee)-[:KNOWS {rating: 5}]->(ir)
```


## 2.2. Retrieve

Find a nodel labeled "Person" and named "Emil":

```SQL
MATCH (ee:Person) WHERE ee.name = "Emil" RETURN ee;
```

Find all Emil's friends by: 

- MATCHING the node:Lobel (ee:Person) WHERE ee.name is Emil;
- Traversing all -:KNOWS- relationships of which either direction involves Emil; 
- Calls result nodes "friends" and returns both Emil and result nodes 

```SQL
MATCH (ee:Person)-[:KNOWS]-(friends) WHERE ee.name = "Emil" RETURN ee, friends
```

### 2.2.1. Recommend 

Recommend a similar friend of friend by:

- MATCHING the node:Label (js:Person) WHERE js.name is Johan;
- Traversing all -:KNOWS- relationships to identify unknown friends of friends whose hobby is surfing; 
- Calls result nodes "surfer", drops redundant results, and returns both Johan and result node(s). 

```SQL
MATCH (js:Person)-[:KNOWS]-()-[:KNOWS]-(surfer)
WHERE js.name = "Johan" AND surfer.hobby = "surfing"
RETURN DISTINCT surfer
```

### 2.2.2. Analyze queries

```SQL
PROFILE MATCH ...
EXPLAIN MATCH ...
```
