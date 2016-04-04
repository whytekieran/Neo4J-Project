// Referenced as query 34 in QueryData.cypher this query will gets the total amount of candidates, male candidates, female candidates, elected male candidates, 
// elected female candidates and the percentage of how many male and female were elected. Trying to match all the patterns using the same MATCH would result 
// in a query that would take a vast amount of time to complete. This is why we use the WITH keyword.


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