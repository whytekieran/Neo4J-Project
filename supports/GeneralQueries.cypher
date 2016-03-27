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

//7. Counts how many different Constituencies there are
MATCH (n:Constituency)
RETURN COUNT(n.Name) AS ConstituencesAmount;

//8. Output a distinct ordered list of all the different political parties that a candidates are a member of
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








