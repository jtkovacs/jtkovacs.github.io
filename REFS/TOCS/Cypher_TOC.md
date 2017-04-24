<table class="TOC"><tr><td>- [Create node](#create-node)
</td></tr></table>




# Create node

This makes a node labeled "Person" with attributes "name", "from", and "klout":

```Cypher
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
# CREATE clause to create data
# () parenthesis to indicate a node
# ee:Person a variable 'ee' and label 'Person' for the new node
# {} brackets to add properties to the node
```