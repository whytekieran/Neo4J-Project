# **_Irish Constituencies Neo4j Database_**

**Student Name:** Ciaran Whyte </br>
**Student ID:** G00254624 </br>
**Course:** Software Development </br>
**Module:** Graph Theory </br>
**Lecturer:** Ian Mcloughlin </br>

## **_Introduction_**
My name is Ciaran Whyte and as part of a Graph Thoery Module based in GMIT (Galway-Mayo Institute of Technology) I have to design and build a
graph database using Neo4J and Cypher. The database is supposed to contain data regarding the 2016 General Election that took place in Ireland 
this year. At a minimum, the requirements specify that I must have data for both constituencies and candidates. In this project I have implemented 
that data along with some additional data which I will be explaining in more detail later in this documentation. 

> **Below is an image representing the 40 different constituencies in Ireland and in brackets beside the constituency name we indicate the amount of seats 
that particular constituency has. The candidates in each constituency then run for election in order to win a seat in their respective constituency. All of
these elected members then congregate together to form the Irish House of Parliment, or Dáil Éireann as its more commonly known**

![Constituencies](/readmeImages/constituencies.png)

Once I have implemented the database with the data specified in the requirments and shown in the above image I must then come up with three interesting queries for the 
database, these queries must demonstrate a good working knowledge of the Neo4J query language, which is called Cypher. The queries and the Cypher 
language will also be explained in more detail later in this documentation.

## **_What is a Graph Database_**
Graph databases are based on the mathematics of graph theory which falls into the category of discreet mathematics. In mathematics and computer science, 
graph theory is the study of graphs, which are mathematical structures used to model relations between objects. Graph databases use nodes (Also called Vertices 
or Objects) and edges (Also known as arcs. Form a relationship between nodes). We can then associate properties and labels with nodes and edges in order to provide 
more specific information.

> **Below is an image representing the layout of a simple graph database in Neo4J, the database seen here consists of three nodes that each have the label 'Person'
and a 'name' property which is set to each persons individual name. These nodes are connected to eachother by what we call a 'Directed Edge(Relationship)' 
meaning that thse nodes are only connected in one direction eg Jim knows Ian, but Ian does not know Jim. What this shows is that Neo4J uses directed edges, meaning 
the edge between nodes must point in a certain direction, it cannot be undirected. Relationships in Neo4J can also be bi-directional but we must use two directed edges
to accomplish this, the downfall of this approach being that if we have the same relationship between two nodes in opposite directions we create an unessesary relationship, 
it uses space and can slow traversal time. The following link is a great blog about how to model bi-directional relationships in Neo4J [Modelling Data in Neo4j: 
Bidirectional Relationships](http://github.com)
We give this relationship a label called 'Knows' which indicates the type of relationship it is. Just like nodes, we could also associate properties with these 
relationships, for example we could add a property called 'since' which could indicate the date the person node first knew the other person node**

![SimpleGraphDBLayout](/readmeImages/simpleGraphLayout.png)

The most popular graph database management system currently available today is called Neo4J. 

## **_The Project Database_**
Explain how you created your database, and how information is represented in it.

## **_Queries_**
Summarise your three queries here.
Then explain them one by one in the following sections.

#### **_Query one title_**
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### **_Query two title_**
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### **_Query three title_**
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## **_References_**
1. [Neo4J website](http://neo4j.com/), contains the documentation for the Neo4J database.
2. [Neo4J CREATE statement](http://neo4j.com/docs/stable/query-create.html), contains general queries using the 'CREATE' statement. One referenced statement from here involved setting properties for a relationship.
3. [Neo4J IN Keyword](http://neo4j.com/docs/stable/cypher-introduction.html) contains information in the introduction section of the Cypher documentation showing how to use the IN keyword to reference multiple properties at once. 
4. [Neo4J SET Keyword] (http://neo4j.com/docs/stable/query-set.html) contains information about setting properties and labels for nodes.
5. [Irish Constituencies Wikapedia] (https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland) contains information about the different Irish constituencies.
6. [Irish General Election Candidates] (https://adriankavanaghelections.org/2014/10/22/officially-declared-candidates-for-the-20152016-general-election) contains information about the different candidates in the irish general election.
7. [Irish General Election Winners] (http://www.thejournal.ie/here-are-the-tds-you-have-elected-2628128-Mar2016) contains information about the elected candidates in the irish general election.
8. [Dáil Éireann] (https://en.wikipedia.org/wiki/D%C3%A1il_%C3%89ireann) contains information about the Dail of Ireland.
9. [Ceann Comhairle] (https://en.wikipedia.org/wiki/Ceann_Comhairle) contains information about the Ceann Comhairle (Dail Chairperson).
10. [Graph Database Wikapedia] (https://en.wikipedia.org/wiki/Graph_database) wikipedia page about graph databases.
11. [Graph Theory Wikapedia] (https://en.wikipedia.org/wiki/Graph_theory) wikipedia page about graph thoery.
12. [Mastering Markdown Language] (https://guides.github.com/features/mastering-markdown) information about how to use the markdown language.



