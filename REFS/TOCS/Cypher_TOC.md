<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/Cypher.html">https://jtkovacs.github.io/REFS/HTML/Cypher.html</a> \> 240 words </p><table class="TOC"><tr><td>- [What is Cypher?](#what-is-cypher?)
- [Create](#create)
	- [Nodes](#nodes)
	- [Relationships (edges)](#relationships-(edges))
- [Retrieve](#retrieve)
	- [Recommend ](#recommend-)
	- [Analyze queries](#analyze-queries)
</td></tr></table>
# What is Cypher?

Cypher is the query language for the [graph database Neo4j.](DBMS.html#neo4j)

# Create

## Nodes

This makes a node **named** "ee" with **label** "Person" and **attributes** "name", "from", and "klout":

```SQL
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
```

This makes two nodes with different names, the same label ("Person"), and differing attributes:

```SQL
CREATE (js:Person { name: "Johan", from: "Sweden", learn: "surfing" }),
(ir:Person { name: "Ian", from: "England", title: "author" })
```

## Relationships (edges)

```SQL
CREATE (node_name)-[:RELATIONSHIP_NAME {relationship_attribute: value}] -> (node_name)

CREATE (ee)-[:KNOWS {since: 2001}]->(js), (ee)-[:KNOWS {rating: 5}]->(ir)
```


# Retrieve

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

## Recommend 

Recommend a similar friend of friend by:

- MATCHING the node:Label (js:Person) WHERE js.name is Johan;
- Traversing all -:KNOWS- relationships to identify unknown friends of friends whose hobby is surfing; 
- Calls result nodes "surfer", drops redundant results, and returns both Johan and result node(s). 

```SQL
MATCH (js:Person)-[:KNOWS]-()-[:KNOWS]-(surfer)
WHERE js.name = "Johan" AND surfer.hobby = "surfing"
RETURN DISTINCT surfer
```

## Analyze queries

```SQL
PROFILE MATCH ...
EXPLAIN MATCH ...
```
