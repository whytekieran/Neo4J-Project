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

//5. Count all the female and all the male graduates
MATCH (cm:Candidate {Gender: "Male"}), (cf:Candidate {Gender: "Female"})
RETURN COUNT(distinct cm), COUNT(distinct cf)



