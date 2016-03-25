														GENERAL QUERIES (SOME QUERIES USED WHILE TESING)
														------------------------------------------------
														
//1. Finds and returns all nodes in the database
MATCH (n) RETURN n;

//2. Finds and deletes all nodes in the database
MATCH (n) DELETE n;

//3. Finds and deletes all nodes and relationships in the database
MATCH (n) DETACH DELETE n

4. Gets all the candidate and constituency nodes and the 'CANDIDATE_IN' relationship between them
MATCH (can:Candidate)-[r:CANDIDATE_IN]->(con:Constituency)
RETURN can, r, con;