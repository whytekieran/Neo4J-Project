# **_Irish General Election Neo4j Database_**

**Student Name:** Ciaran Whyte </br>
**Student ID:** G00254624 </br>
**Course:** Software Development </br>
**Module:** Graph Theory </br>
**Lecturer:** Ian Mcloughlin </br>

**_Git Branches:_** 

**1. Master Branch** The commits to the branch include any queries that are involved in creating the database and the ReadMe.md, the query files commited
								 on this branch are the CreateDatabase.cypher and GeneralQueries.cypher files which are located inside the supports folder, the 
								 largest amount of commits will be found here. </br>
**2. Query Data Branch** The commits on this branch include any queries that are involved in searching for useful and interesting data. The query file
									 commited on this branch is the QueryData.cypher file which is located inside the supports folder. </br>
**3. Finished Branch** Lastly, this branch contains one commit which is the finished project. </br>

## **_Introduction_**
My name is Ciaran Whyte and as part of a Graph Thoery Module based in GMIT (Galway-Mayo Institute of Technology) I have to design and build a
graph database using Neo4J and Cypher. Today Neo4J is the worlds most popular graph database managment system, it uses a language called Cypher as its query
language. 

The database im implementing is supposed to contain data regarding the 2016 General Election that took place in Ireland 
this year. At a minimum, the requirements specify that I must have data for both constituencies and candidates. In this project I have implemented 
that data along with some additional data which I will be explaining in more detail later in this documentation. 

> **Below is an image representing the 40 different constituencies in Ireland and in brackets beside the constituency name we indicate the amount of seats 
that particular constituency has. The candidates in each constituency then run for election in order to win a seat in their respective constituency. All of
these elected members then congregate together to form the Irish House of Parliment, or Dáil Éireann as its more commonly known**

![Constituencies](/readmeImages/constituencies.png)

Once I have implemented the database with the data specified in the requirements and shown in the above image I must then come up with three interesting queries for the 
database, these queries must demonstrate a good working knowledge of the Neo4J query language, Cypher. The queries and the Cypher 
language will also be explained in more detail later in this documentation.

## **_What is a Graph Database_**
Graph databases are based on the mathematics of graph theory which falls into the category of discreet mathematics. In mathematics and computer science, 
graph theory is the study of graphs, which are mathematical structures used to model relations between objects. Graph databases use nodes (Also called Vertices 
or Objects) and edges (Also known as arcs. Form a relationship between nodes). We can then associate properties and labels with nodes and edges in order to provide 
more specific information.

> **Below is an image representing the layout of a simple graph database in Neo4J, the database seen here consists of three nodes that each have the label 'Person'
and a 'name' property which is set to each persons individual name. These nodes are connected to eachother by what we call a 'Directed Edge(Relationship)' 
meaning that these nodes are only connected in one direction eg Jim knows Ian, but Ian does not know Jim. What this shows is that Neo4J uses directed edges, meaning 
the edge between nodes must point in a certain direction, it cannot be undirected. Relationships in Neo4J can also be bi-directional but we must use two directed edges
to accomplish this, the downfall of this approach being that if we have the same relationship between two nodes in opposite directions we create an unnessesary relationship, 
it uses space and can slow traversal time. The following link is a great blog about how to model bi-directional relationships correctly in Neo4J [Modelling Data in Neo4j: 
Bidirectional Relationships](http://graphaware.com/neo4j/2013/10/11/neo4j-bidirectional-relationships.html).   
We give this relationship a label called 'Knows' which indicates the type of relationship it is. Just like nodes, we could also associate properties with these 
relationships, for example we could add a property called 'since' which could indicate the date the person node first knew the other person node**

![SimpleGraphDBLayout](/readmeImages/simpleGraphLayout.png)

## **_Neo4J and Cypher_**

In the previous sections we briefly mentioned Neo4J and its supporting language Cypher. We have also mentioned the general layout of a graph database and the four 
main elements that it consists of, which are:

Element | Description
------------ | -------------
Node | Represents an entity in the database, defined as a circle when shown visually.
Edge | Represents a relationship between nodes, must be directional and are defined as lines when shown visually.
Labels | Used to shown what type of entity a node is representing or what type of relationship an edge is representing
Properties | Used to set information about a node or edge

Although i say that there are four main elements in a Neo4J graph database, some people may say its actually two. (Nodes and Edges) This is technically true, what im 
trying to show in the above table is the _four most important components_ of a Neo4J graph database.
This section will now discuss Neo4J and the Cypher query language in some more depth.

#### **_Neo4J_**

Neo4J is a noSQL graph database management system. It was developed by Neo Technology, Inc. Development for Neo4J first began in 2003 and it has been available publically
through open source since 2007. It is cross platform software meaning it works on multiple operating systems, including Windows, Mac PC's and Linux. 

Neo4J is implemented using both Java and Scala, it is JVM (Java Virtual Machine) based. Neo4J was originally developed to work with the Java programming language (Hence the
'J' in Neo4J) but since then that has been expanded to include many other languages like Python for example. The Neo4J source code and the ability to perform 
version tracking of the software is available from the following link on Github [Neo4J Source Code](https://github.com/neo4j/neo4j). 

Most NoSQL databases lack true ACID transactions unlike Neo4J which fully supports ACID (Atomicity, Consistency, Isolation, Durability) out of the box. ACID makes sure that 
database transactions are processed in a reliable way, meaning that a transaction with the database must fully finish, otherwise the changes that were made before the 
failure must be undone. ACID databases also store their data on some sort of durable storage, eg hard disk. Neo4J also provide for efficient data importing, allowing CSV and
relational formatted data to be easily converted. Lastly, Neo4J is also incredibly fast, allowing a user to search through millions of connections a second.

#### **_Cypher_**

Cypher is Neo4J’s declarative graph query language. The Cypher language borrows some of its structure and keywords from SQL which allows users that are familier with using
relational database management systems like MySQL to quickly become accustomed to using Neo4J as well. The Cypher language allows a user to describe what he/she wants to 
select, insert, update or delete from a graph database without requiring the user to describe exactly how its done.

Cypher uses ASCII-Art to represent patterns, this form of pattern matching is done in place of the traditional relational approach where we would declare which coloumns we want.
To refer to a node we use parentheses which look like circles, eg (node). To refer to relationships we use square brackets, eg [relationship]. We can specify the direction of
the relationship by using a syntax something like the following (node1)-[follows]->(node2). As you can see its very clear what we are specifying, we are saying that node1 follows
node2. Lastly we can specify labels by using syntax like :label and specify properties by using key-value pairs inside square brackets, eg {key: "value"}. Both labels and properties
can go inside a relationship or a node.

#### **_Cypher Example_** 

In this example we are going to use Cypher to build the graph that we defined in the previous section 'What is a Graph Database'. This example will go though the creation of the 
graph step by step, explaining the Cypher code along the way.

**Step 1**
Creating the nodes

```cypher
CREATE (i:Person {Name: "Ian"}), 		//The CREATE keyword is used to create nodes and patterns.
       (j:Person {Name: "Jim"}),		//Basically, this is what each of these nodes is describing (usedToReferenceNodeLater:Label {Key: "Value"})
       (e:Person {Name: "Emil"}) 
RETURN i, j, e;							//The return keyword is optional, once the nodes are created this keyword causes them to be shown back to the user.
```
(Note: i, j and e are temporary reference variables, they are only used to refer to an element later in the query)
Now that we have created the three nodes we need to now create the relationships between them.

**Step 2**
Creating the relationships between the nodes

```cypher
MATCH 									//The MATCH keyword is used to retrive any elements that match the patterns specified. (Kind of like your SELECT statement in SQL)
	(i:Person {Name: "Ian"}), 			//Then we specify the nodes we are looking for and use a temporary placeholder so we can reference them further in the query.
    (j:Person {Name: "Jim"}),		
    (e:Person {Name: "Emil"}) 		
CREATE									//Next we use the CREATE keyword to create the relationships
	(i)-[r1:KNOWS]->(e),				//We dont need to reference the node, just its placeholder (Here we say create the 'KNOWS' relationship between Ian and Emil)
	(j)-[r2:FOLLOWS_TWITTER]->(i)
	(j)-[r3:FOLLOWS_TWITTER]->(e)
RETURN
	r1, r2, r3;							//Return the relationships back to the user so he/she can see them.
```

Thats it, with those two simple steps we have created the graph shown earlier, if you want to view more information about Cypher you can view its documentation from the 
Neo4J website, here is the link [Cypher Documentation](http://neo4j.com/docs/stable/cypher-query-lang.html). 

## **_Neo4J (Graph Database) Vs MySQL (Relational Database)_**

Over the course of this documentation the word 'MySQL' as been briefly mentioned once or twice. MySQL and SQL is the equivalent to Neo4J and Cypher. The main difference being
that MySQL is a relational database management system and SQL (Structured Query Language) is MySQL's supporting language. 

#### **_Relational Structure_**

We have described already the structure of a graph database, a relational database on the otherhand does not use vertices and edges like the graph database, instead relational
databases organise their data into tables with rows and columns, columns in different tables are then related to eachother through what we call the 'FOREIGN_KEY' attribute.
Graph databases are often called schemaless database meaning we dont need to define a structure or data types before we create the graph. Relational databases do require a
schema, each column must have a defined data type specifying exactly what type of data it will accept. This has advantages and disadvantages which will explained in the next
section. 

> **Below is an image representing the layout of a simple relational database, we see three tables, the customer, pet and appointments table. The appointments table is
called a junction table and it contains data related to both the pet and customer table. This is done through the appointments table's foreign keys, which are the
CUSTOMER_ID and PET_ID columns**

![SimpleGraphDBLayout](/readmeImages/relational.png)

#### **_Advantages and Disadvantages_**

So how do these two types of database compare to eachother, here we list some of the advantages and disadvantages of each.

**Relational Database Advantages**

1. A relational database is much faster when operating on large amounts fo data. In a graph database, each record has to be examined individually during a query because the
   structure of the data must be determined. In relational database a schema is defined, so this is known ahead of time.
2. Relational databases use less storage space, because unlike graph databases they do not need to store many relationships.
3. Relational databases have been around for quite a long time and are tried and tested, graph databses are relatively new and people tend to favour ways that they are familier
   with and they know will work.

**Relational Database Disadvantages**

1. Relational databases require a schema right from the beginning, once a table for the databse has a schema, it cant be changed, the alterations you can do to the table are
   very minimal. This means that if at some point during a project the data you wish to store changes, this can cause issues as the structure for the database now must be changed.
2. Relational database queries are not well suited to certain tasks, for example tasks a social networking site may want to accomplish like searching for freinds of friends. It 
   can accomplish these tasks but only from the use of expensive JOIN's of tables.
   
**Graph Database Advantages**

1. Graph Databases are schemaless, meaning that if the type of data we are storing changes we do not need to change any underlying structure, we simply just add the alterations.
2. Graph Databases are extemely effective at performing the kind of searches that relational databases arent good at. These are searches like finding friends of friends or trying
   to find the shortest path between two entities.
   
**Graph Database Disadvantages**

1. Graph Databases tend to use a lot of storage space because of the extra relationships that they must store.

Overall which approach you decide to take when designing an application really depends on the task your trying to accomplish, both databases are useful in certain areas. If you
wish to view more information about relational database here is a link to MySQL's documentation. [MySQL](https://dev.mysql.com/doc/)

## **_The Project Database_**
In the introduction of this documentation I described the project that i will be doing which involves creating a graph databse. Now that ive explained a little about the technologies 
that will be using i will now explain the database that ive created for my project. 

**The Database Nodes**

Firstly i shall explain the different types of nodes in my project, the project consists of six different types of nodes which are outlined in the table below along with their
properties and labels.

Node | Description | Label(s) | Property(s)
------------ | ------------- | ------------- | -------------
Candidate Node | Represents an election candidate from a constituency | Candidate | Name, Constituency, Party
Constituency Node | Represents a particular constituency | Constituency | Name, Seats, Population, Province, Created
Political Party Node | Represents a particular political party | PoliticalParty | Name, Founded, Leader
TD Node| Represents a candidate node that has been elected | Candidate, TD | Name, Consistency, Party
Dail Node | Node representing the Dáil Éireann of Ireland | Dail | Name, Seats, FirstFounded
Ceann Comhairle Node | Represents the Ceann Comhairle (Chairperson) of the dail, also a TD | CeannComhairle, TD | Incumbent, IncumbentAppointed (Date)

**The Database Relationships**

Next we have the relationships that connect these nodes together, the project consists of four different types of relationships, these relationships are outlined in the
table below.

Relationship | Description | Connected Nodes | Label(s) | Property(s)
------------ | ------------- | ------------- | ------------- | -------------
Candidate_in Relationship | Represents which candidate is running for office in which constituency | Candidate, Consistency | CANDIDATE_IN | Election (States which election it was)
Elected_in Relationship | Represents which candidate has been elected into which constituency | Candidate, Constituency | ELECTED_IN | Election (States which election it was)
Seated_in Relationship | Represents which candidates have a seat in the dail. (Ones with ELECTED_IN relationship) | Candidate, Dail | SEATED_IN | None
Member_of Relationship | Represents which candidate is a member of which political party | Candidate, PoliticalParty | MEMBER_OF | None

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
13. [Cypher Query Language] (http://neo4j.com/developer/cypher) information about cypher and how to use it.



