



# Create node

This makes a node **named** "ee" with **label** "Person" and **attributes** "name", "from", and "klout":

```SQL
CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })

CREATE (js:Person { name: "Johan", from: "Sweden", learn: "surfing" }),
(ir:Person { name: "Ian", from: "England", title: "author" })

```



# Find nodes

Find a nodel labeled "Person" and named "Emil":

```SQL
MATCH (ee:Person) WHERE ee.name = "Emil" RETURN ee;

```