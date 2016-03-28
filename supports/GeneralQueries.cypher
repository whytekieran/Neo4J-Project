											 GENERAL QUERIES (SOME QUERIES USED WHILE TESING AND CREATING THE DATABASE)
										------------------------------------------------------------------------------------
														
//1. Finds and returns all nodes in the database (Used for checking nodes while testing and creating)
MATCH (n) RETURN n;

//2. Finds and deletes all nodes in the database (Used to delete nodes in the database, when undoing a test)
MATCH (n) DELETE n;

//3. Finds and deletes all nodes and relationships in the database (Used to delete everything in the database)
MATCH (n) DETACH DELETE n;

//4. Gets all the candidate and constituency nodes and the 'CANDIDATE_IN' relationship between them (Visually Shows the elements described)
MATCH (can:Candidate)-[r:CANDIDATE_IN]->(con:Constituency)
RETURN can, r, con;

//5. Finds all Constituency nodes with the Name 'Cork South West' and deletes it along with any relationships it has.
MATCH (n:Constituency {Name: "Cork South-West"})
DETACH DELETE n;

//6. Find any candidate node that has its 'Party' property set to 'Fís Nua' and update it to 'Fis Nua'.(Fís Nua to Fis Nua, was used to update a value while implementing the database)
MATCH (n:Candidate {Party: "Fís Nua"})
SET n.Party = "Fis Nua"
RETURN n;

//7. Counts how many different Constituencies there are (making sure i have the correct amount)
MATCH (n:Constituency)
RETURN COUNT(n.Name) AS ConstituencesAmount;

//8. Output a distinct ordered list of all the different political parties that a candidates are a member of (making sure i have the right amount of political parties, no mispellings)
MATCH (cand:Candidate)
RETURN DISTINCT cand.Party
ORDER BY cand.Party;

//9. Find any candidate node that has its 'Party' property set to Social Democrat and update it to Social Democrats.(Social Democrat to Social Democrats, was used to update a value while implementing the database)
MATCH (n:Candidate {Party: "Social Democrat"})
SET n.Party = "Social Democrats"
RETURN n;

//10. Searching for a node with an incorrectly set Party property
MATCH (cand:Candidate)
WHERE cand.Party = "Dublin Mid-West"
RETURN cand;

//11. Updating the Party property of the node found in query 10.
MATCH (cand:Candidate)
WHERE cand.Party = "Dublin Mid-West"
SET cand.Party = "Independant"
RETURN cand;

//12. Show all the political party nodes (can be used as a comparison with query number 8)
MATCH (pp:PoliticalParty)
RETURN pp;

//Queries numbered 13-27 Shows all the members of a particular political party
//13. Show all candidates who are members of Fianna Fail
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Fianna Fail"
RETURN c, r, pp;

//14. Show all candidates who are members of Fine Gael
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Fine Gael"
RETURN c, r, pp;

//15. Show all candidates who are members of Labour
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Labour"
RETURN c, r, pp;

//16. Show all candidates who are members of Sinn Fein
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Sinn Fein"
RETURN c, r, pp;

//17. Show all candidates who are members of Green Party
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Green Party"
RETURN c, r, pp;

//18. Show all candidates who are members of People Before Profit Alliance
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "People Before Profit Alliance"
RETURN c, r, pp;

//19. Show all candidates who are members of Anti Austerity Alliance
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Anti Austerity Alliance"
RETURN c, r, pp;

//20. Show all candidates who are members of RENUA
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "RENUA"
RETURN c, r, pp;

//21. Show all candidates who are members of Direct Democracy Ireland a National Citizens Movement Conference
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Direct Democracy Ireland a National Citizens Movement Conference"
RETURN c, r, pp;

//22. Show all candidates who are members of Fis Nua
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Fis Nua"
RETURN c, r, pp;

//23. Show all candidates who are members of Social Democrats
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Social Democrats"
RETURN c, r, pp;

//24. Show all candidates who are members of Communist Party
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Communist Party"
RETURN c, r, pp;

//25. Show all candidates who are members of Catholic Democrats
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Catholic Democrats"
RETURN c, r, pp;

//26. Show all candidates who are members of Workers Party
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "Workers Party"
RETURN c, r, pp;

//27. Show all candidates who are members of No Associated Party
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name = "No Associated Party"
RETURN c, r, pp;

//28. Show all candidates who are in Cavan–Monaghan constituency
MATCH (c:Candidate)
WHERE c.Constituency = "Cavan–Monaghan"
RETURN c;

//29. This was used to delete the 'CANDIDATE_IN' relationship between the 'Carlow-Kilkenny' constituency node and the related candidate nodes. (Redoing mistakes)
MATCH (c:Candidate)-[r:CANDIDATE_IN]->(con:Constituency) 
WHERE con.Name = "Carlow-Kilkenny" DELETE r;

//30. Setting a relationship property of Election = "General 2016" (property was left out and had to be set)
MATCH (can:Candidate)-[r:ELECTED_IN]->(con:Constituency)
WHERE can.Constituency = "Carlow-Kilkenny"
SET r.Election = "General 2016";

//31. Used to retrieve all candidates with 'ELECTED_IN' relationship with a specific constituency (Just change constituency name to suit which area you wish to search)
MATCH (c:Candidate)-[r:ELECTED_IN]->(con:Constituency) 
WHERE con.Name = "Cavan–Monaghan"
RETURN c, r, con;

//32. This creates an additional relationship of 'ELECTED_IN' between two nodes in a particular constituency (Used when updating a forgotten relationship. Important note is that
//this query only works if you know that the candidate being referenced is the only one with that name in that constituency. Otherwise you would also need to check the candidates 
//'Constituency' property)
MATCH (c:Candidate), (con:Constituency)
WHERE c.Name = "Marc McSharry" AND con.Name = "Sligo-Leitrim"
CREATE (c)-[r:ELECTED_IN {Election: "General 2016"}]->(con);

//33. Updating a candidates name (Much easier to manage and keep track of the name this way, without the nickname)
MATCH (n:Candidate {Name: "Kevin “Boxer” Moran"})
SET n.Name = "Kevin Moran"
RETURN n;

//34a. This query will return Constituency nodes for Dublin Mid-West and any Candidate node that is related to it in any way. (Used for checking results, for different results
//for another Constituency just change the con.Name property in the query. If this query doesnt work then use the one below)
MATCH (can:Candidate)-[r]->(con:Constituency)
WHERE con.Name = "Dublin North-West"
RETURN can, r, con;

//34b Sometimes Neo4J is fussy and wont accept queries formatted in a certain way. For example when i was testing the query (34a) with the 'Dublin North-West' Constituency
//it did not work, but the query below (which is the exact same just all one one line) does work. Weird :/ (When this query worked, the one above then started to work, its almost
//like running the query below kick started the query above into working)
MATCH (can:Candidate)-[r]->(con:Constituency) WHERE con.Name = "Dublin North-West" return can, r, con;

//35. This query will delete all relationships that are associated with the Constituency node for Cork South-West and its candidates. To delete relationships for different constituency
//just change the name. (Query was used when undoing a mistake)
MATCH (can:Candidate)-[r]->(con:Constituency)
WHERE con.Name = "Dublin North–West"
DELETE r;

//36. Finds all nodes that have a 'SEATED_IN' relationship with the Dail node, hence gets all Dail members
MATCH (n)-[r:SEATED_IN]-(de:Dail)
RETURN n, r, de;

//37. Some information has advised me that this candidate (Sean Barrett) has been automatically re-elected as Ceann Comhairle. But ive seen other information which i believe to be
//accurate that advises me that a new Ceann Comhairle was elected. This means that keeping this particular candidate in the Dail would cause 159 seats which is not possible
//so using the information ive researched and my best judgement, im deleting this candidate to keep the seats at 158 which is accurate.
MATCH (can:Candidate) WHERE can.Name= "Sean Barrett" and can.Constituency = "Dun Laoghaire" DETACH DELETE can;



