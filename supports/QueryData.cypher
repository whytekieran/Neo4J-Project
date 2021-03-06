																		QUERIES FOR INTERESTING DATA
																   --------------------------------------
														
--The following queries were used while trying to come up with interesting queries to retrieve data. These are the ones which did not make the top three shown in the documentation.
--A major issue i found with Neo4J compared with something like SQL is the length of time it takes to perform certain queries, much longer than SQL in general. This is something
--i felt was worth metioning that when it comes to calculating total amounts of nodes or relationships Neo4J can be quite slow

//1. Gets all the female candidate nodes
MATCH (c:Candidate) where c.Gender = "Female" return c;

//2. Count all the female candidate nodes and give the result the name of 'FemaleCandidates' (161 Female Candidates)
MATCH (c:Candidate) where c.Gender = "Female"
RETURN COUNT(distinct c) AS FemaleCandidates;

//3. Gets all the male candidate nodes
MATCH (c:Candidate) where c.Gender = "Male" return c;

//4. Count all the male candidate nodes and give the result the name of 'MaleCandidates' (391 Female Candidates)
MATCH (c:Candidate) where c.Gender = "Male"
RETURN COUNT(distinct c) AS MaleCandidates;

//5. Count all the female and all the male candidates
MATCH (cm:Candidate {Gender: "Male"}), (cf:Candidate {Gender: "Female"})
RETURN COUNT(distinct cm), COUNT(distinct cf)
	 
//6. Counts the amount of males sitting in the dail and amount of females
MATCH (cfd:TD {Gender: "Female"})-[r1:SEATED_IN]->(de:Dail),
	  (cmd:TD {Gender: "Male"})-[r2:SEATED_IN]->(de:Dail)
RETURN COUNT(distinct cmd), COUNT(distinct cfd);

//7a. Attempted to do a query which would count all males and females and count all male and female in the dail for comparison
//but the database could not handle it :/ Accomplished in query 34 with percentage
MATCH (cm:Candidate {Gender: "Male"}), 
	  (cf:Candidate {Gender: "Female"}),							
	  (cmd:TD {Gender: "Male"})-[r1:SEATED_IN]->(n1), 
	  (cfd:TD {Gender: "Female"})-[r2:SEATED_IN]->(n2)
RETURN COUNT(distinct cm), COUNT(distinct cf), COUNT(distinct cmd), COUNT(distinct cfd);

//7b Here is a way to get the information that couldnt be done in 7a. This will return the information in only 70ms unlike query 7a which took so long i cancelled the query.
MATCH (c:Candidate)-[r]->(n1)
RETURN
CASE
WHEN type(r) = "CANDIDATE_IN" AND c.Gender = "Male"
THEN count(c) + " Male Candidates"
WHEN type(r) = "ELECTED_IN" AND c.Gender = "Male"
THEN count(c) + " Elected Male Candidates"
WHEN type(r) = "CANDIDATE_IN" AND c.Gender = "Female"
THEN count(c) + " Female Candidates"
WHEN type(r) = "ELECTED_IN" AND c.Gender = "Female"
THEN count(c) + " Elected Female Candidates"
ELSE count(distinct c) + " Total Candidates (Male and Female)"
END AS Results;

//8. Finds the amount of Fianna Fail Members in the dail vs Fine Gael
MATCH (cff:TD {Party: "Fianna Fail"}),
	  (cfg:TD {Party: "Fine Gael"})
RETURN COUNT(distinct cff), COUNT(distinct cfg);

//9. Finds all the candidates and all their relationships (CANDIDATE_IN, ELECTED_IN)
MATCH (c:Candidate)-[r]->(con:Constituency) RETURN r;

//10. Finds all the candidates and all their relationships in connacht(CANDIDATE_IN, ELECTED_IN)
MATCH (c:Candidate)-[r]->(con:Constituency {Province: "Connacht"}) RETURN r;

//11. Show that there were 12 Fianna Fail Candidates in Connacht vs 6 for Sinn Fein
MATCH (cff:Candidate {Party: "Fianna Fail"})-[r1]->(conff:Constituency {Province: "Connacht"}),
	  (csf:Candidate {Party: "Sinn Fein"})-[r2]->(consf:Constituency {Province: "Connacht"})
RETURN COUNT(distinct cff) AS FiannaFail, COUNT(distinct csf) AS SinnFein;

//12. Show that there were 35 Fianna Fail Candidates in Leinster vs 27 for Sinn Fein

MATCH (cff:Candidate {Party: "Fianna Fail"})-[r1]->(conff:Constituency {Province: "Leinster"}),
	  (csf:Candidate {Party: "Sinn Fein"})-[r2]->(consf:Constituency {Province: "Leinster"})
RETURN COUNT(distinct cff) AS FiannaFail, COUNT(distinct csf) AS SinnFein;

//13. Count amount of candidates in Leinster
MATCH (cl:Candidate)-[r1:CANDIDATE_IN]->(con:Constituency {Province: "Leinster"})
RETURN COUNT(distinct cl) AS Leinster;

//14. Counts how many candidates are in Leinster, Munster and Connacht Leinster=299 Munster=146 Connacht=76
MATCH (cl:Candidate)-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Leinster"}),	
	  (cm:Candidate)-[r2:CANDIDATE_IN]->(conm:Constituency {Province: "Munster"}),
	  (cc:Candidate)-[r3:CANDIDATE_IN]->(conc:Constituency {Province: "Connacht"})
RETURN COUNT(distinct cl) AS Leinster, COUNT(distinct cm) AS Munster, COUNT(distinct cc) AS Connacht;

//15. Shows that there is only one constituency with a population greater than 100000 and only 3 seats (Kildare South)
MATCH (con:Constituency)	
WHERE toInt(con.Population) > 100000 AND con.Seats = "3"
RETURN con;

//16-18 These queries compare the amount of male vs female candidates in each province. 
//16. Compare amount of males vs female in Leinster
MATCH (cf:Candidate {Gender: "Female"})-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Leinster"}),	
	  (cm:Candidate {Gender: "Male"})-[r2:CANDIDATE_IN]->(conc:Constituency {Province: "Leinster"})
RETURN COUNT(distinct cf) AS Female, COUNT(distinct cm) AS Male;

//17. Compare amount of males vs female in Connacht
MATCH (cf:Candidate {Gender: "Female"})-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Connacht"}),	
	  (cm:Candidate {Gender: "Male"})-[r2:CANDIDATE_IN]->(conc:Constituency {Province: "Connacht"})
RETURN COUNT(distinct cf) AS Female, COUNT(distinct cm) AS Male;

//18. Compare amount of males vs female in Munster
MATCH (cf:Candidate {Gender: "Female"})-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Munster"}),	
	  (cm:Candidate {Gender: "Male"})-[r2:CANDIDATE_IN]->(conc:Constituency {Province: "Munster"})
RETURN COUNT(distinct cf) AS Female, COUNT(distinct cm) AS Male;

//19-20 Both these queries get the amount of male and female candidates, the elected male and female and the percentage of how may were
//elected. Use of the COUNT, toFloat and ROUND functions here. 
//19. Female Candidates, Elected Female Candidates and Percentage of how many female candidates were elected (22%)
MATCH (cf:Candidate {Gender: "Female"})-[r1:CANDIDATE_IN]->(con1:Constituency),	
	  (cfe:Candidate {Gender: "Female"})-[r2:ELECTED_IN]->(con2:Constituency)
RETURN COUNT(distinct cf) AS FemaleCandidates, 
	   COUNT(distinct cfe) AS FemaleElectedCandidates, 
	   ROUND(((toFloat(COUNT(distinct cfe)) /  toFloat(COUNT(distinct cf))) * 100)) + "%" AS PercentageElected;

//20. Male Candidates, Elected Male Candidates and Percentage of how many Male candidates were elected (31%)
MATCH (cm:Candidate {Gender: "Male"})-[r1:CANDIDATE_IN]->(con1:Constituency),	
	  (cme:Candidate {Gender: "Male"})-[r2:ELECTED_IN]->(con2:Constituency)
RETURN COUNT(distinct cf) AS MaleCandidates, 
	   COUNT(distinct cfe) AS MaleElectedCandidates, 
	   ROUND(((toFloat(COUNT(distinct cme)) /  toFloat(COUNT(distinct cm))) * 100)) + "%" AS PercentageElected;

//21. Shows Fianna Fail Candidates and all other candidates. Using the <> operator
MATCH (cff:Candidate)-[:MEMBER_OF]->(ppff:PoliticalParty {Name: "Fianna Fail"}), (c:Candidate)-[:MEMBER_OF]->(pp:PoliticalParty)
WHERE pp.Name <> "Fianna Fail"
RETURN COUNT(distinct cff) AS FiannaFailCandidates, COUNT(distinct c) AS OtherCandidates;

//22. Will get the total number of Fianna Fail Candidates, Fine Gael Candidates and Total Candidates including Fianna Fail and Fine Gael 
MATCH (cff:Candidate)-[:MEMBER_OF]->(ppff:PoliticalParty {Name: "Fianna Fail"}),
	  (cfg:Candidate)-[:MEMBER_OF]->(ppfg:PoliticalParty {Name: "Fine Gael"}),
	  (can:Candidate)
RETURN COUNT(distinct cff) AS FiannaFailCandidates, COUNT(distinct cfg) AS FineGaelCandidates, COUNT(distinct can) AS Candidates;

//23. Will count amount of candidates in the following four parties FiannaFail, FineGael, Labour and SinnFein (Slow, takes about 55seconds)
MATCH (cff:Candidate)-[:MEMBER_OF]->(ppff:PoliticalParty {Name: "Fianna Fail"}),
	  (cfg:Candidate)-[:MEMBER_OF]->(ppfg:PoliticalParty {Name: "Fine Gael"}),
	  (csf:Candidate)-[:MEMBER_OF]->(ppsf:PoliticalParty {Name: "Sinn Fein"}),
	  (cla:Candidate)-[:MEMBER_OF]->(ppla:PoliticalParty {Name: "Labour"})
RETURN COUNT(distinct cff) AS FiannaFailCandidates, 
	   COUNT(distinct cfg) AS FineGaelCandidates, 
	   COUNT(distinct csf) AS SinnFeinCandidates,
	   COUNT(distinct cla) AS LabourCandidates;

//24. Here we manage to do the same thing as in query 23. This query though is much faster, taking about 55ms compared to 55sec in the last query.
//This example uses a CASE expression to accomplish its goal
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
ELSE count(c) + " Other"
END AS PartyCandidates

//25 Shows how many candidates represented each political party for the entire country
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

//26. Here is an example using a Regular Expression to find Candidates with a name beginning with the letters 'Ja'
MATCH (c:Candidate)
WHERE c.Name =~ 'Ja.*'
RETURN c.Name;

//27. This query will output each political party with a list of every member belonging to that party next to it. Showing examples of using the WITH keyword
//along with using the collect() function to collect each group of members.
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WITH pp, collect(c.Name) AS Members
RETURN pp.Name AS PoliticalParty, Members
ORDER BY pp.Name ASC;

//28. This query does the same as above, the difference being it only shows political parties that had 5 or less members as candidates in the election
MATCH (c:Candidate)-[r:MEMBER_OF]->(pp:PoliticalParty)
WITH pp, collect(c.Name) AS Members
WHERE SIZE(Members) <= 5
RETURN pp.Name AS PoliticalParty, Members
ORDER BY pp.Name ASC;

//29. Nice query showing Enda Kenny has CANDIDATE_IN, ELECTED_IN, MEMBER_OF and SEATED_IN relationships with his constituency, dail and political party.
MATCH (c:Candidate {Name: "Enda Kenny"})-[r]->(node)
RETURN r;

//30a Gets all the other candidates that were elected into Mayo along with Enda Kenny
MATCH (ek:Candidate {Name: "Enda Kenny"})-[:ELECTED_IN]->(:Constituency)<-[:ELECTED_IN]-(c:Candidate) 
WHERE c.Name <> "Enda Kenny" 
RETURN c.Name ORDER BY c.Name;

//30b Same result using variable length relationship
MATCH (ek:Candidate {Name: "Enda Kenny"})-[:ELECTED_IN*2]-(c:Candidate)
RETURN DISTINCT c.Name
ORDER BY c.Name;

//31-32   The following queries are a few examples of using the shortestpath() function.
//31a. Finds shortest path between Enda Kenny and Gerry Adams	(The * symbol means return all relationships of any type. Can also do *..5 to specify number of hops, 5 in this example)
MATCH (ek:Candidate {Name: "Enda Kenny"}), (ga:Candidate {Name: "Gerry Adams"}), 
p = shortestPath((ek)-[*]-(ga)) RETURN p

//31b. Finds shortest path between Enda Kenny and Gerry Adams	(The * symbol means return all relationships of any type. Can also do *..5 to specify number of hops, 5 in this example)
//This time though we simply return the amount of relationships between them
MATCH (ek:Candidate {Name: "Enda Kenny"}), (ga:Candidate {Name: "Gerry Adams"}), 
p = shortestPath((ek)-[*]-(ga)) RETURN LENGTH(RELATIONSHIPS(p)) AS RelationshipsBetween;

//32. Finds the shortest path between Enda Kenny and a political party (Will return that he is a member of Fine Gael)
MATCH (ek:Candidate {Name: "Enda Kenny"}), (pp:PoliticalParty), 
p = shortestPath((ek)-[:MEMBER_OF]-(ga)) RETURN p

//33. This query will get the total amount of candidates, male and female candidate
MATCH (c:Candidate)-[r1]->(Constituency)
WITH COUNT(distinct c) AS can
MATCH (mcan:Candidate)-[r2]->(conm:Constituency)
WHERE mcan.Gender = "Male"
WITH COUNT(distinct mcan) AS mcan, can
MATCH (fcan:Candidate)-[r3]->(conf:Constituency)
WHERE fcan.Gender = "Female"
WITH COUNT(distinct fcan) AS fcan, mcan, can
RETURN can, mcan, fcan


//34. This query gets the total amount of candidates, male candidates, female candidates, elected male candidates, elected female candidates and the percentage of how many male and
//female were elected. This is what was attemtped in query 7. Using the WITH keyword it greatly speeds up the query speed.
MATCH (c:Candidate)-[r1]->(Constituency)
WITH COUNT(distinct c) AS TotalCandidates
MATCH (mcan:Candidate)-[r2]->(conm:Constituency)
WHERE mcan.Gender = "Male"
WITH COUNT(distinct mcan) AS TotalMCandidates, TotalCandidates
MATCH (fcan:Candidate)-[r3]->(conf:Constituency)
WHERE fcan.Gender = "Female"
WITH COUNT(distinct fcan) AS TotalFCandidates, TotalMCandidates, TotalCandidates
MATCH (fcane:Candidate)-[r4:ELECTED_IN]->(confe:Constituency)
WHERE fcane.Gender = "Female"
WITH COUNT(distinct fcane) AS ElectedFCandidates, TotalMCandidates, TotalCandidates, TotalFCandidates
MATCH (mcane:Candidate)-[r5:ELECTED_IN]->(conme:Constituency)
WHERE mcane.Gender = "Male"
WITH COUNT(distinct mcane) AS ElectedMCandidates, 
	 ROUND(((toFloat(COUNT(distinct mcane)) /  toFloat(TotalMCandidates)) * 100)) + "%" AS MalePercentageElected,
	 ROUND(((toFloat(ElectedFCandidates) /  toFloat(TotalFCandidates)) * 100)) + "%" AS FemalePercentageElected,
	 TotalMCandidates, TotalCandidates, TotalFCandidates, ElectedFCandidates
RETURN TotalCandidates, 
	  TotalMCandidates, 
	  TotalFCandidates, 
	  ElectedFCandidates, 
	  ElectedMCandidates,
	  MalePercentageElected,
	  FemalePercentageElected;
	  	  
//35. Query to show which province elected how many Fianna Fail candidates and which province has the highest percentage of elected Fianna Fail members  
MATCH (cl:Candidate {Party: "Fianna Fail"})-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Leinster"})
WITH COUNT(distinct cl) AS LeinsterFiannaFail
MATCH (cm:Candidate {Party: "Fianna Fail"})-[r2:CANDIDATE_IN]->(conl:Constituency {Province: "Munster"})
WITH COUNT(distinct cm) AS MunsterFiannaFail, LeinsterFiannaFail
MATCH (cc:Candidate {Party: "Fianna Fail"})-[r3:CANDIDATE_IN]->(conl:Constituency {Province: "Connacht"})
WITH COUNT(distinct cc) AS ConnachtFiannaFail, MunsterFiannaFail, LeinsterFiannaFail
MATCH (cle:Candidate {Party: "Fianna Fail"})-[r4:ELECTED_IN]->(conl:Constituency {Province: "Leinster"})
WITH COUNT(distinct cle) AS LeinsterFiannaFailElected, ConnachtFiannaFail, MunsterFiannaFail, LeinsterFiannaFail
MATCH (cme:Candidate {Party: "Fianna Fail"})-[r5:ELECTED_IN]->(conl:Constituency {Province: "Munster"})
WITH COUNT(distinct cme) AS MunsterFiannaFailElected, LeinsterFiannaFailElected, ConnachtFiannaFail, MunsterFiannaFail, LeinsterFiannaFail 
MATCH (cce:Candidate {Party: "Fianna Fail"})-[r6:ELECTED_IN]->(conl:Constituency {Province: "Connacht"})
WITH COUNT(distinct cce) AS ConnachtFiannaFailElected, 
	 ROUND(((toFloat(COUNT(distinct cce)) /  toFloat(ConnachtFiannaFail)) * 100)) + "%" AS ConnachtFiannaFailElectedP,
	 ROUND(((toFloat(MunsterFiannaFailElected) /  toFloat(MunsterFiannaFail)) * 100)) + "%" AS MunsterFiannaFailElectedP,
	 ROUND(((toFloat(LeinsterFiannaFailElected) /  toFloat(LeinsterFiannaFail)) * 100)) + "%" AS LeinsterFiannaFailElectedP,
	 MunsterFiannaFailElected, LeinsterFiannaFailElected, ConnachtFiannaFail, MunsterFiannaFail, LeinsterFiannaFail 
RETURN LeinsterFiannaFail, MunsterFiannaFail, ConnachtFiannaFail, LeinsterFiannaFailElected, MunsterFiannaFailElected, ConnachtFiannaFailElected, LeinsterFiannaFailElectedP,
	   MunsterFiannaFailElectedP, ConnachtFiannaFailElectedP;

//36. Query showing an example of using the 'OPTIONAL MATCH' Keyword.
//The optional match will return results if they are found (Partial Matching). If results arent found they are ignored but the results that were found are still returned
//The MATCH keyword has to match everything or it returns nothing. (All or nothing). In this example Lionel Messi is not a candidate, he is a well known footballer and does 
//not exist in this database. Enda Kenny though does exist. The optional match will still return enda kenny. A normal match would not return anything because one of
//the patterns doesnt match
OPTIONAL MATCH (c:Candidate {Name: "Lionel Messi"}),
			   (c:Candidate {Name: "Enda Kenny"});

			   



