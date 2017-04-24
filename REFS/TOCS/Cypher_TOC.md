<table class="TOC"><tr><td>- [Create node](#create-node)
</td></tr></table>




# Create node

This makes a node labeled "Person" with attributes "name", "from", and "klout":

```Cypher
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
```