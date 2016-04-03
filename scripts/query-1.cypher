// Referenced as query 25 in QueryData.cypher this query will return how many Candidate nodes represent each party (So must count the 'MEMBER_OF' relationships)

//There are many ways this type of query could be approached, this query may be long but it will give back results in a very fast time.
//The query is done by using Case Expressions.
//Firstly we get all candidates and the party they are a member of using the MATCH keyword.
//The Case Expression works as follows:
//CASE (Start of case)
//WHEN (Check for condition)
//THEN (IF condition met then do something)
//END (End the case expression)

MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)	
RETURN
CASE
WHEN pp.Name = "Fianna Fail"
THEN count(c) + " Fianna Fail"
WHEN pp.Name = "Fine Gael"
THEN count(c) + " Fine Gael"
WHEN pp.Name = "Sinn Fein"
THEN count(c) + " Sinn Fein"
WHEN pp.Name = "Labour"
THEN count(c) + " Labour"
WHEN pp.Name = "Green Party"
THEN count(c) + " Green Party"
WHEN pp.Name = "People Before Profit Alliance"
THEN count(c) + " People Before Profit Alliance"
WHEN pp.Name = "Anti Austerity Alliance"
THEN count(c) + " Anti Austerity Alliance"
WHEN pp.Name = "RENUA"
THEN count(c) + " RENUA"
WHEN pp.Name = "Direct Democracy Ireland a National Citizens Movement Conference"
THEN count(c) + " Direct Democracy Ireland a National Citizens Movement Conference"
WHEN pp.Name = "Fis Nua"
THEN count(c) + " Fis Nua"
WHEN pp.Name = "Social Democrats"
THEN count(c) + " Social Democrats"
WHEN pp.Name = "Communist Party"
THEN count(c) + " Communist Party"
WHEN pp.Name = "Catholic Democrats"
THEN count(c)+ " " + " Catholic Democrats"
WHEN pp.Name = "No Associated Party"
THEN count(c) + " No Associated Party"
WHEN pp.Name = "Workers Party"
THEN count(c) + " Workers Party"
END AS PartyCandidates