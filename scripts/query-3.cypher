// Referenced as query 35 in QueryData.cypher ...Query to show which province elected how many Fianna Fail candidates and which province has the highest 
// percentage of elected Fianna Fail members 

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
