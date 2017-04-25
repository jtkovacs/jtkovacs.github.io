



# Create nodes

This makes a node **named** "ee" with **label** "Person" and **attributes** "name", "from", and "klout":

```SQL
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
```

This makes two nodes with different names, the same label ("Person"), and differing attributes:

```SQL
CREATE (js:Person { name: "Johan", from: "Sweden", learn: "surfing" }),
(ir:Person { name: "Ian", from: "England", title: "author" })
```

# Create relationships

```SQL
CREATE (node_name)-[:RELATIONSHIP_NAME {relationship_attribute: value}] -> (node_name)

CREATE (ee)-[:KNOWS {since: 2001}]->(js), (ee)-[:KNOWS {rating: 5}]->(ir)
```


# Find nodes

Find a nodel labeled "Person" and named "Emil":

```XML
MATCH (ee:Person) WHERE ee.name = "Emil" RETURN ee;
```

Find all Emil's friends by: 

- MATCHING the node:Lobel (ee:Person) WHERE ee.name is Emil;
- Traversing all -:KNOWS- relationships of which either direction involves Emil; 
- Calls result nodes "friends" and returns both Emil and result nodes 

```SQL
MATCH (ee:Person)-[:KNOWS]-(friends) WHERE ee.name = "Emil" RETURN ee, friends
```

**Recommend** a similar friend of friend by:

- MATCHING the node:Label (js:Person) WHERE js.name is Johan;
- Traversing all -:KNOWS- relationships to identify unknown friends of friends whose hobby is surfing; 
- Calls result nodes "surfer", drops redundant results, and returns both Johan and result node(s). 

```SQL
MATCH (js:Person)-[:KNOWS]-()-[:KNOWS]-(surfer)
WHERE js.name = "Johan" AND surfer.hobby = "surfing"
RETURN DISTINCT surfer
```
