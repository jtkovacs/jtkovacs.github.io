<table class="TOC"><tr><td>/home/jtk/Site/REFS/Cypher.md- [Create nodes](#create-nodes)
- [Create relationships](#create-relationships)
- [Find nodes](#find-nodes)
</td></tr></table>




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
```


# Find nodes

Find a nodel labeled "Person" and named "Emil":

```SQL
MATCH (ee:Person) WHERE ee.name = "Emil" RETURN ee;

```