																		QUERIES FOR INTERESTING DATA
																   --------------------------------------
														
--The following queries were used while trying to come up with interesting queries to retrieve data. These are the ones which did not make the top three shown in the documentation

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

//7. Attempted to do a query which would count all males and females and count all male and female in the dail for comparison
//but the database could not handle it :/

MATCH (cm:Candidate {Gender: "Male"}), 
	  (cf:Candidate {Gender: "Female"}),							
	  (cmd:TD {Gender: "Male"})-[r1:SEATED_IN]->(n1), 
	  (cfd:TD {Gender: "Female"})-[r2:SEATED_IN]->(n2)
RETURN COUNT(distinct cm), COUNT(distinct cf), COUNT(distinct cmd), COUNT(distinct cfd);

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

//14. Counts how many candidates are in Leinster, Munster and Connacht takes 5-15seconds Leinster=299 Munster=146 Connacht=76

MATCH (cl:Candidate)-[r1:CANDIDATE_IN]->(conl:Constituency {Province: "Leinster"}),	
	  (cm:Candidate)-[r2:CANDIDATE_IN]->(conm:Constituency {Province: "Munster"}),
	  (cc:Candidate)-[r3:CANDIDATE_IN]->(conc:Constituency {Province: "Connacht"})
RETURN COUNT(distinct cl) AS Leinster, COUNT(distinct cm) AS Munster, COUNT(distinct cc) AS Connacht;

//15. Shows that there is only one constituency with a population greater than 100000 and only 3 seats (Kildare South)

MATCH (con:Constituency)	
WHERE toInt(con.Population) > 100000 AND con.Seats = "3"
RETURN con;

//16-18 These queries compare the amiunt of male vs female candidates in each province. 
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









	 



