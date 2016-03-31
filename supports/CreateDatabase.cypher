															QUERIES USED TO CREATE THE DATABASE
															-----------------------------------	

--These queries are used solely to create the database															
															

//1. THE FOLLOWING QUERY CREATES NODES REPRESENTING ALL CONSTITUENCIES IN IRELAND

CREATE (:Constituency {Name: "Carlow-Kilkenny", Seats: "5", Population: "145649", Province: "Leinster", Created: "1948"}), 
       (:Constituency {Name: "Cavan-Monaghan", Seats: "4", Population: "120483", Province: "Ulster", Created: "1977"}),
       (:Constituency {Name: "Clare", Seats: "4", Population: "111336", Province: "Munster", Created: "1921"}),
	   (:Constituency {Name: "Cork East", Seats: "4", Population: "114365", Province: "Munster", Created: "1981"}),
	   (:Constituency {Name: "Cork North-Central", Seats: "4", Population: "117170", Province: "Munster", Created: "1981"}),
	   (:Constituency {Name: "Cork North-West", Seats: "3", Population: "86539", Province: "Munster", Created: "1980"}),
	   (:Constituency {Name: "Cork South-Central", Seats: "4", Population: "117952", Province: "Munster", Created: "1981"}),
	   (:Constituency {Name: "Cork South-West", Seats: "3", Population: "82952", Province: "Munster", Created: "1961"}),
	   (:Constituency {Name: "Donegal", Seats: "5", Population: "152358", Province: "Ulster", Created: "2016"}),
	   (:Constituency {Name: "Dublin Bay North", Seats: "5", Population: "146512", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Dublin Bay South", Seats: "4", Population: "116396", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Dublin Central", Seats: "3", Population: "89030", Province: "Leinster", Created: "1981"}),
	   (:Constituency {Name: "Dublin Fingal", Seats: "5", Population: "141162", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Dublin Mid-West", Seats: "4", Population: "110427", Province: "Leinster", Created: "2002"}),
	   (:Constituency {Name: "Dublin North-West", Seats: "3", Population: "90534", Province: "Leinster", Created: "1981"}),
	   (:Constituency {Name: "Dublin Rathdown", Seats: "3", Population: "87470", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Dublin South-Central", Seats: "4", Population: "114660", Province: "Leinster", Created: "1948"}),
	   (:Constituency {Name: "Dublin South-West", Seats: "5", Population: "144908", Province: "Leinster", Created: "1981"}),
	   (:Constituency {Name: "Dublin West", Seats: "4", Population: "113179", Province: "Leinster", Created: "1981"}),
	   (:Constituency {Name: "Dun Laoghaire", Seats: "4", Population: "118791", Province: "Leinster", Created: "1977"}),
	   (:Constituency {Name: "Galway East", Seats: "3", Population: "89564", Province: "Connacht", Created: "1977"}),
	   (:Constituency {Name: "Galway West", Seats: "5", Population: "150874", Province: "Connacht", Created: "1937"}),
	   (:Constituency {Name: "Kerry", Seats: "5", Population: "145502", Province: "Munster", Created: "2016"}),
	   (:Constituency {Name: "Kildare North", Seats: "4", Population: "115350", Province: "Leinster", Created: "1997"}),
	   (:Constituency {Name: "Kildare South", Seats: "3", Population: "115350", Province: "Leinster", Created: "1997"}),
	   (:Constituency {Name: "Laois", Seats: "3", Population: "87745", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Limerick City", Seats: "4", Population: "113835", Province: "Munster", Created: "2011"}),
	   (:Constituency {Name: "Limerick County", Seats: "3", Population: "83834", Province: "Munster", Created: "2016"}),
	   (:Constituency {Name: "Longford-Westmeath", Seats: "4", Population: "116802", Province: "Leinster", Created: "2007"}),
	   (:Constituency {Name: "Louth", Seats: "5", Population: "143272", Province: "Leinster", Created: "2007"}),
	   (:Constituency {Name: "Mayo", Seats: "4", Population: "120332", Province: "Connacht", Created: "1997"}),
	   (:Constituency {Name: "Meath East", Seats: "3", Population: "86527", Province: "Leinster", Created: "2007"}),
	   (:Constituency {Name: "Meath West", Seats: "3", Population: "85550", Province: "Leinster", Created: "2007"}),
	   (:Constituency {Name: "Offaly", Seats: "3", Population: "87640", Province: "Leinster", Created: "2016"}),
	   (:Constituency {Name: "Roscommon-Galway", Seats: "3", Population: "84586", Province: "Connacht", Created: "2016"}),
	   (:Constituency {Name: "Sligo-Leitrim", Seats: "4", Population: "119153", Province: "Connacht", Created: "2016"}),
	   (:Constituency {Name: "Tipperary", Seats: "5", Population: "147801", Province: "Munster", Created: "2016"}),
	   (:Constituency {Name: "Waterford", Seats: "4", Population: "113795", Province: "Munster", Created: "1923"}),
	   (:Constituency {Name: "Wexford", Seats: "5", Population: "145320", Province: "Leinster", Created: "1921"}),
	   (:Constituency {Name: "Wicklow", Seats: "5", Population: "141012", Province: "Leinster", Created: "1923"});


//2. THE FOLLOWING QUERIES CREATE NODES REPRESENTING ALL THE ELECTION CANDITATES IN IRELAND
--Candidates for Carlow-Kilkenny Constituency--
CREATE (:Candidate {Name: "John Paul Phelan", Constituency: "Carlow-Kilkenny", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Pat Deering", Constituency: "Carlow-Kilkenny", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "David Fitzgerald", Constituency: "Carlow-Kilkenny", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "John McGuinness", Constituency: "Carlow-Kilkenny", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Bobby Aylward", Constituency: "Carlow-Kilkenny", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Jennifer Murnane-O’Connor", Constituency: "Carlow-Kilkenny", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Ann Phelan", Constituency: "Carlow-Kilkenny", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Kathleen Funchion", Constituency: "Carlow-Kilkenny", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Malcolm Noonan", Constituency: "Carlow-Kilkenny", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Adrienne Wallace", Constituency: "Carlow-Kilkenny", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Patrick McKee", Constituency: "Carlow-Kilkenny", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Conor MacLiam", Constituency: "Carlow-Kilkenny", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Noel G Walsh", Constituency: "Carlow-Kilkenny", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Paddy Milo Manning", Constituency: "Carlow-Kilkenny", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Keith Gilligan", Constituency: "Carlow-Kilkenny", Party: "Independant", Gender: "Male"});

--Candidates for Cavan-Monaghan Constituency--

CREATE (:Candidate {Name: "Heather Humphries", Constituency: "Cavan-Monaghan", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Joe O'Reilly", Constituency: "Cavan-Monaghan", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Brendan Smith", Constituency: "Cavan-Monaghan", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Niamh Smyth", Constituency: "Cavan-Monaghan", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Mike Durkan", Constituency: "Cavan-Monaghan", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Caoimhghin OCaolain", Constituency: "Cavan-Monaghan", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Kathryn Reilly", Constituency: "Cavan-Monaghan", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Micheál Callaghan", Constituency: "Cavan-Monaghan", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Mick McDermott", Constituency: "Cavan-Monaghan", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Aoife O'Connell", Constituency: "Cavan-Monaghan", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Female"}),
	   (:Candidate {Name: "Sean Conlan", Constituency: "Cavan-Monaghan", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John Wilson", Constituency: "Cavan-Monaghan", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Jimmy Mee", Constituency: "Cavan-Monaghan", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mary Smyth", Constituency: "Cavan-Monaghan", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Emmet Smith", Constituency: "Cavan-Monaghan", Party: "Independant", Gender: "Male"});
					
--Candidates for Clare Constituency--

CREATE (:Candidate {Name: "Pat Breen", Constituency: "Clare", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Joe Carey", Constituency: "Clare", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Mary Howard", Constituency: "Clare", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Timmy Dooley", Constituency: "Clare", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Michael McDonagh", Constituency: "Clare", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Clare Colleran Molloy", Constituency: "Clare", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Michael McNamara", Constituency: "Clare", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Noeleen Moran", Constituency: "Clare", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Fergal Smith", Constituency: "Clare", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Niamh O'Brien", Constituency: "Clare", Party: "Fis Nua", Gender: "Female"}),
	   (:Candidate {Name: "Ann Norton", Constituency: "Clare", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Richard Cahill", Constituency: "Clare", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Ian Lynch", Constituency: "Clare", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Harty", Constituency: "Clare", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Dermot Mulqueen", Constituency: "Clare", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "André Sibo Hakizimana", Constituency: "Clare", Party: "Independant", Gender: "Male"});

--Candidates for Cork-East Constituency--
	   
CREATE (:Candidate {Name: "Tom Barry", Constituency: "Cork East", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "David Stanton", Constituency: "Cork East", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Noel McCarthy", Constituency: "Cork East", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Kevin O'Keeffe", Constituency: "Cork East", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Barbara Ahern", Constituency: "Cork East", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Sean Sherlock", Constituency: "Cork East", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Pat Buckley", Constituency: "Cork East", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Ciara Leonardi Roche", Constituency: "Cork East", Party: "Anti Austerity Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Paul Bradford", Constituency: "Cork East", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Ken Curtin", Constituency: "Cork East", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Natasha Harty", Constituency: "Cork East", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Kieran McCarthy", Constituency: "Cork East", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mary Linehan Foley", Constituency: "Cork East", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Ross Cannon", Constituency: "Cork East", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Paddy Bullman", Constituency: "Cork East", Party: "Independant", Gender: "Male"});	   
	   
--Candidates for Cork North-Central Constituency--

CREATE (:Candidate {Name: "Dara Murphy", Constituency: "Cork North-Central", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Julie O'Leary", Constituency: "Cork North-Central", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Billy Kelleher", Constituency: "Cork North-Central", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Kathleen Lynch", Constituency: "Cork North-Central", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Jonathan O'Brien", Constituency: "Cork North-Central", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Thomas Gould", Constituency: "Cork North-Central", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Mick Barry", Constituency: "Cork North-Central", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Oliver Moran", Constituency: "Cork North-Central", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Ted Tynan", Constituency: "Cork North-Central", Party: "Workers Party", Gender: "Male"}),
	   (:Candidate {Name: "Paddy O'Leary", Constituency: "Cork North-Central", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Ger Keohane", Constituency: "Cork North-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Peter O'Loughlin", Constituency: "Cork North-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Thomas Kiely", Constituency: "Cork North-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mick Murphy", Constituency: "Cork North-Central", Party: "Independant", Gender: "Male"});
					
--Candidates for Cork North-West Constituency--

CREATE (:Candidate {Name: "Aine Collins", Constituency: "Cork North-West", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Michael Creed", Constituency: "Cork North-West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Michael Moynihan", Constituency: "Cork North-West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Aindrias Moynihan", Constituency: "Cork North-West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Nigel Dennehy", Constituency: "Cork North-West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Jason Fitzgerald", Constituency: "Cork North-West", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Michael O'Donnell", Constituency: "Cork North-West", Party: "Communist Party", Gender: "Male"}),
	   (:Candidate {Name: "Cormac Manning", Constituency: "Cork North-West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "John Paul O'Shea", Constituency: "Cork North-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Steven O'Riordan", Constituency: "Cork North-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Diarmuid O'Flynn", Constituency: "Cork North-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Shirley Griffin", Constituency: "Cork North-West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Jerry O'Sullivan", Constituency: "Cork North-West", Party: "Independant", Gender: "Male"});

--Candidates for Cork South-Central Constituency--

CREATE (:Candidate {Name: "Jerry Buttimer", Constituency: "Cork South-Central", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Simon Coveney", Constituency: "Cork South-Central", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Micheal Martin", Constituency: "Cork South-Central", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Michael McGrath", Constituency: "Cork South-Central", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Ciaran Lynch", Constituency: "Cork South-Central", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Donnchadh O'Laoghaire", Constituency: "Cork South-Central", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Lorna Bogue", Constituency: "Cork South-Central", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Jim O'Connell", Constituency: "Cork South-Central", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Fiona Ryan", Constituency: "Cork South-Central", Party: "Anti Austerity Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Ciaran Kenneally", Constituency: "Cork South-Central", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Mick Finn ", Constituency: "Cork South-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Diarmaid O'Cadhla", Constituency: "Cork South-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Mohally", Constituency: "Cork South-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Elizabeth Hourihane", Constituency: "Cork South-Central", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Joe Harris", Constituency: "Cork South-Central", Party: "Independant", Gender: "Male"});

--Candidates for Cork South-West Constituency-- 

CREATE (:Candidate {Name: "Noel Harrington", Constituency: "Cork South-West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Jim Daly", Constituency: "Cork South-West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Margaret Murphy-O'Mahony", Constituency: "Cork South-West", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Michael McCarthy", Constituency: "Cork South-West", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Rachel McCarthy", Constituency: "Cork South-West", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Johnny O'Mahony", Constituency: "Cork South-West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Theresa Heaney", Constituency: "Cork South-West", Party: "Catholic Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Alan Coleman", Constituency: "Cork South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Collins", Constituency: "Cork South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Fiona Pettit O'Leary", Constituency: "Cork South-West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Gillian Powell", Constituency: "Cork South-West", Party: "Independant", Gender: "Female"});

--Candidates for Donegal Constituency--  
	   
CREATE (:Candidate {Name: "Joe McHugh", Constituency: "Donegal", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Paddy Harte Jr.", Constituency: "Donegal", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Charlie McConalogue", Constituency: "Donegal", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Pat The Cope Gallagher", Constituency: "Donegal", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Pearse Doherty", Constituency: "Donegal", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Padraig MacLochlainn", Constituency: "Donegal", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Gary Doherty", Constituency: "Donegal", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Paula Flanagan", Constituency: "Donegal", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Thomas Pringle", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Niamh Kennedy", Constituency: "Donegal", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Frank McBrearty", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Tim Jackson", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Dessie Shiels", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Ian McGarvey", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Mooney", Constituency: "Donegal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Cordelia Nic Fhearraigh", Constituency: "Donegal", Party: "Fis Nua", Gender: "Female"});

--Candidates for Dublin Bay North Constituency-- 

CREATE (:Candidate {Name: "Stephanie Regan", Constituency: "Dublin Bay North", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Naoise O'Muiri", Constituency: "Dublin Bay North", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Richard Bruton", Constituency: "Dublin Bay North", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Deirdre Heney", Constituency: "Dublin Bay North", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Sean Haughey", Constituency: "Dublin Bay North", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Aodhan O'Riordain", Constituency: "Dublin Bay North", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Micheál MacDonncha", Constituency: "Dublin Bay North", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Denise Mitchell", Constituency: "Dublin Bay North", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Michael O'Brien", Constituency: "Dublin Bay North", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "John Lyons", Constituency: "Dublin Bay North", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Terence Flanagan", Constituency: "Dublin Bay North", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Cian O'Callaghan", Constituency: "Dublin Bay North", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Donna Cooney", Constituency: "Dublin Bay North", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Finian McGrath", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Tommy Broughan", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Averil Power", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Jimmy Guerin", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Paul Clarke", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Damien O'Neill", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Proinsias O'Conaráin", Constituency: "Dublin Bay North", Party: "Independant", Gender: "Female"});

--Candidates for Dublin Bay South Constituency-- 
 
CREATE (:Candidate {Name: "Eoghan Murphy", Constituency: "Dublin Bay South", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Kate O'Connell", Constituency: "Dublin Bay South", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Jim O'Callaghan", Constituency: "Dublin Bay South", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Kevin Humphries", Constituency: "Dublin Bay South", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Chris Andrews", Constituency: "Dublin Bay South", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Annette Mooney", Constituency: "Dublin Bay South", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Eamon Ryan", Constituency: "Dublin Bay South", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Lucinda Creighton", Constituency: "Dublin Bay South", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Gleanna Lynch", Constituency: "Dublin Bay South", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Mannix Flynn", Constituency: "Dublin Bay South", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "William D.J. Gorman", Constituency: "Dublin Bay South", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Alan MacStiofan", Constituency: "Dublin Bay South", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John Dominic Keigher", Constituency: "Dublin Bay South", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Eoin Tierney", Constituency: "Dublin Bay South", Party: "Independant", Gender: "Male"});

--Candidates for Dublin Central Constituency--

CREATE (:Candidate {Name: "Paschal Donohoe", Constituency: "Dublin Central", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Mary Fitzpatrick", Constituency: "Dublin Central", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Joe Costello", Constituency: "Dublin Central", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Mary Lou McDonald", Constituency: "Dublin Central", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Gary Gannon", Constituency: "Dublin Central", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Éilis Ryan", Constituency: "Dublin Central", Party: "Workers Party", Gender: "Male"}),
	   (:Candidate {Name: "Ian Noel Smyth", Constituency: "Dublin Central", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Diana O'Dwyer", Constituency: "Dublin Central", Party: "Anti Austerity Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Cormac McKay", Constituency: "Dublin Central", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Jacqui Gilbourne", Constituency: "Dublin Central", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Christy Burke", Constituency: "Dublin Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Cieran Perry", Constituency: "Dublin Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Maureen O'Sullivan", Constituency: "Dublin Central", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "William D.J. Gorman", Constituency: "Dublin Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Kerry Guinan", Constituency: "Dublin Central", Party: "Independant", Gender: "Female"});

--Candidates for Dublin Fingal Constituency--

CREATE (:Candidate {Name: "Alan Farrell", Constituency: "Dublin Fingal", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "James Reilly", Constituency: "Dublin Fingal", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Darragh O'Brien", Constituency: "Dublin Fingal", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Lorraine Clifford-Lee", Constituency: "Dublin Fingal", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Brendan Ryan", Constituency: "Dublin Fingal", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Louise O'Reilly", Constituency: "Dublin Fingal", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Joe O'Brien", Constituency: "Dublin Fingal", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Terry Kelleher", Constituency: "Dublin Fingal", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Gerry Molloy", Constituency: "Dublin Fingal", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Clare Daly", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Barry Martin", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Roslyn Fuller", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Tony Murphy", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Marcus de Brun", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Fergal O'Connell", Constituency: "Dublin Fingal", Party: "Independant", Gender: "Male"});

--Candidates for Dublin Mid-West Constituency--

CREATE (:Candidate {Name: "Frances Fitzgerald", Constituency: "Dublin Mid-West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Derek Keating", Constituency: "Dublin Mid-West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "John Curran", Constituency: "Dublin Mid-West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Joanna Tuffy", Constituency: "Dublin Mid-West", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Eoin O'Broin", Constituency: "Dublin Mid-West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Gino Kenny", Constituency: "Dublin Mid-West", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Anne-Marie McNally", Constituency: "Dublin Mid-West", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Lorraine Hennessy", Constituency: "Dublin Mid-West", Party: "Workers Party", Gender: "Female"}),
	   (:Candidate {Name: "Tom Kivlehan", Constituency: "Dublin Mid-West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Christopher Healy", Constituency: "Dublin Mid-West", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Francis Timmons", Constituency: "Dublin Mid-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Paul Gogarty", Constituency: "Dublin Mid-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Clare Leonard", Constituency: "Dublin Mid-West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Patrick Akpoveta", Constituency: "Dublin Mid-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Haroon Khan", Constituency: "Dublin Mid-West", Party: "Independant", Gender: "Male"});

--Candidates for Dublin North-West Constituency--

CREATE (:Candidate {Name: "Noel Rock", Constituency: "Dublin North-West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Paul McAuliffe", Constituency: "Dublin North-West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "John Lyons", Constituency: "Dublin North-West", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Dessie Ellis", Constituency: "Dublin North-West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Cathleen Carney Boud", Constituency: "Dublin North-West", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Roisin Shortall", Constituency: "Dublin North-West", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Andrew Keegan", Constituency: "Dublin North-West", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Caroline Conroy", Constituency: "Dublin North-West", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Jimmy Dignam", Constituency: "Dublin North-West", Party: "Workers Party", Gender: "Male"}),
	   (:Candidate {Name: "Cormac MacKay", Constituency: "Dublin North-West", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Bernie Hughes", Constituency: "Dublin North-West", Party: "Independant", Gender: "Male"});

--Candidates for Dublin Rathdown Constituency--

CREATE (:Candidate {Name: "Alan Shatter", Constituency: "Rathdown", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Josepha Madigan", Constituency: "Rathdown", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Mary White", Constituency: "Rathdown", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Alex White", Constituency: "Rathdown", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Sorcha Nic Cormaic", Constituency: "Rathdown", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Catherine Martin", Constituency: "Rathdown", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Alan Daveron", Constituency: "Rathdown", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Shane Ross", Constituency: "Rathdown", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Peter Mathews", Constituency: "Rathdown", Party: "Independant", Gender: "Male"});

--Candidates for Dublin South-Central Constituency--					

CREATE (:Candidate {Name: "Catherine Byrne", Constituency: "Dublin South-Central", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Catherine Ardagh", Constituency: "Dublin South-Central", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Eric Byrne", Constituency: "Dublin South-Central", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Aengus O'Snodaigh", Constituency: "Dublin South-Central", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Maire Devine", Constituency: "Dublin South-Central", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Bríd Smith", Constituency: "Dublin South-Central", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Oisín O'Halmhain", Constituency: "Dublin South-Central", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Michael Gargan", Constituency: "Dublin South-Central", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Liam Coyne", Constituency: "Dublin South-Central", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Neville Bradley", Constituency: "Dublin South-Central", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Joan Collins", Constituency: "Dublin South-Central", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Paul Hand", Constituency: "Dublin South-Central", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Richard Murray", Constituency: "Dublin South-Central", Party: "Independant", Gender: "Male"});
					
--Candidates for Dublin South-West Constituency--			
					
CREATE (:Candidate {Name: "Colm Brophy", Constituency: "Dublin South-West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Anne-Marie Dermody", Constituency: "Dublin South-West", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Karen Warren", Constituency: "Dublin South-West", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "John Lahart", Constituency: "Dublin South-West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Pamela Kearns", Constituency: "Dublin South-West", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Mick Duff", Constituency: "Dublin South-West", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Sarah Holland", Constituency: "Dublin South-West", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Sean Crowe", Constituency: "Dublin South-West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Paul Murphy", Constituency: "Dublin South-West", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Sandra Fay", Constituency: "Dublin South-West", Party: "Anti Austerity Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Francis Noel Duffy", Constituency: "Dublin South-West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Ronan McMahon", Constituency: "Dublin South-West", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Stephen Sinclair", Constituency: "Dublin South-West", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Katherine Zappone", Constituency: "Dublin South-West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Deirdre O'Donovan", Constituency: "Dublin South-West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Declan Burke", Constituency: "Dublin South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Eamonn Maloney", Constituency: "Dublin South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Peter Fitzpatrick", Constituency: "Dublin South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Kieran Adam Quigley", Constituency: "Dublin South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Frank O'Gorman", Constituency: "Dublin South-West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Joan Summerville-Molloy", Constituency: "Dublin South-West", Party: "Independant", Gender: "Female"});
					
--Candidates for Dublin West Constituency--		

CREATE (:Candidate {Name: "Catherine Noone", Constituency: "Dublin West", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Leo Varadkar", Constituency: "Dublin West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Jack Chambers", Constituency: "Dublin West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Joan Burton", Constituency: "Dublin West", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Paul Donnelly", Constituency: "Dublin West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Ruth Coppinger", Constituency: "Dublin West", Party: "Anti Austerity Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Roderic O'Gorman", Constituency: "Dublin West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Jo O'Brien", Constituency: "Dublin West", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "David McGuinness", Constituency: "Dublin West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "TJ Clare", Constituency: "Dublin West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Dermot Casey", Constituency: "Dublin West", Party: "Independant", Gender: "Male"});
 
--Candidates for Dun Laoghaire Constituency--	
					
CREATE (:Candidate {Name: "Mary Mitchell O'Connor", Constituency: "Dun Laoghaire", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Maria Bailey", Constituency: "Dun Laoghaire", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Cormac Devlin", Constituency: "Dun Laoghaire", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Mary Hanafin", Constituency: "Dun Laoghaire", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Carrie Smyth", Constituency: "Dun Laoghaire", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Shane O'Brien", Constituency: "Dun Laoghaire", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Richard Boyd Barrett", Constituency: "Dun Laoghaire", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Frank Cronin", Constituency: "Dun Laoghaire", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Ossian Smyth", Constituency: "Dun Laoghaire", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Raymond Whitehead", Constituency: "Dun Laoghaire", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Carol Hunt", Constituency: "Dun Laoghaire", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Sean Barrett", Constituency: "Dun Laoghaire", Party: "Fine Gael", Gender: "Male"});				

--Candidates for Galway East Constituency--
					
CREATE (:Candidate {Name: "Paul Connaughton", Constituency: "Galway East", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Ciaran Cannon", Constituency: "Galway East", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Anne Rabbitte", Constituency: "Galway East", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Colm Keaveney", Constituency: "Galway East", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Lorraine Higgins", Constituency: "Galway East", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Annemarie Roche", Constituency: "Galway East", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Máiréad Ní Chróinín", Constituency: "Galway East", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Aengus Melia", Constituency: "Galway East", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Sean Canney", Constituency: "Galway East", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Fahy", Constituency: "Galway East", Party: "Independant", Gender: "Male"});
		
--Candidates for Galway West Constituency--		

CREATE (:Candidate {Name: "Hildegarde Naughten", Constituency: "Galway West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Sean Kyne", Constituency: "Galway West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "John O'Mahony", Constituency: "Galway West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Eamon O'Cuiv", Constituency: "Galway West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Mary Hoade", Constituency: "Galway West", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "John Connolly", Constituency: "Galway West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Derek Nolan", Constituency: "Galway West", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Trevor O'Clochartaigh", Constituency: "Galway West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Tommy Holohan", Constituency: "Galway West", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Niall O'Tuathail", Constituency: "Galway West", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Seamus Sheridan", Constituency: "Galway West", Party: "Green Party", Gender: "Male"}), 
       (:Candidate {Name: "Nicola Daveron", Constituency: "Galway West", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Ruairi O'Neill", Constituency: "Galway West", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "James Charity", Constituency: "Galway West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Noel Grealish", Constituency: "Galway West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Catherine Connolly", Constituency: "Galway West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Fidelma Healy-Eames", Constituency: "Galway West", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Mike Cubbard", Constituency: "Galway West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Tommy Roddy", Constituency: "Galway West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Patrick Feeney", Constituency: "Galway West", Party: "Independant", Gender: "Male"});

--Candidates for Kerry Constituency--
 
CREATE (:Candidate {Name: "Jimmy Deenihan", Constituency: "Kerry", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Brendan Griffin", Constituency: "Kerry", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Grace O'Donnell", Constituency: "Kerry", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "John Brassill", Constituency: "Kerry", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Norma Moriarty", Constituency: "Kerry", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Arthur Spring", Constituency: "Kerry", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Martin Ferris", Constituency: "Kerry", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Brian Finucane", Constituency: "Kerry", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Donal Corcoran", Constituency: "Kerry", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Michael Fitzgerald", Constituency: "Kerry", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Michael Healy-Rae", Constituency: "Kerry", Party: "Independant", Gender: "Male"}), 
       (:Candidate {Name: "Danny Healy-Rae", Constituency: "Kerry", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael O'Gorman", Constituency: "Kerry", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Kevin Murphy", Constituency: "Kerry", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Henry Gaynor", Constituency: "Kerry", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mary E. Fitzgibbon", Constituency: "Kerry", Party: "Independant", Gender: "Female"});

--Candidates for Kildare North Constituency--

CREATE (:Candidate {Name: "Anthony Lawlor", Constituency: "Kildare North", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Bernard Durkan", Constituency: "Kildare North", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "James Lawless", Constituency: "Kildare North", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Frank O'Rourke", Constituency: "Kildare North", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Emmett Stagg", Constituency: "Kildare North", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Réada Cronin", Constituency: "Kildare North", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Catherine Murphy", Constituency: "Kildare North", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Ashling Merriman", Constituency: "Kildare North", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Shane Fitzgerald", Constituency: "Kildare North", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Maebh Ní Fhallúin", Constituency: "Kildare North", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Brendan Young", Constituency: "Kildare North", Party: "Independant", Gender: "Male"}), 
       (:Candidate {Name: "Michael Beirne", Constituency: "Kildare North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Gerard Dunne", Constituency: "Kildare North", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Elizabeth O'Sullivan", Constituency: "Kildare North", Party: "Independant", Gender: "Female"});

--Candidates for Kildare South Constituency--

CREATE (:Candidate {Name: "Martin Heydon", Constituency: "Kildare South", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Fiona McLoughlin-Healy", Constituency: "Kildare South", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Seán O'Fearghaíl", Constituency: "Kildare South", Party: "Fianna Fail", Gender: "Male"}), 
	   (:Candidate {Name: "Fiona O'Loughlin", Constituency: "Kildare South", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Mark Wall", Constituency: "Kildare South", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Patricia Ryan", Constituency: "Kildare South", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Suzanne McEneaney", Constituency: "Kildare South", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Mary Kennedy", Constituency: "Kildare South", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Declan Crowe", Constituency: "Kildare South", Party: "Independant", Gender: "Male"});

--Candidates for Laois Constituency-- 

CREATE (:Candidate {Name: "Charlie Flanagan", Constituency: "Laois", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Thomasina Connell", Constituency: "Laois", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Sean Fleming", Constituency: "Laois", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "John Whelan", Constituency: "Laois", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Brian Stanley", Constituency: "Laois", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Sinead Moore", Constituency: "Laois", Party: "Green Party", Gender: "Female"});

--Candidates for Limerick City Constituency--

CREATE (:Candidate {Name: "Michael Noonan", Constituency: "Limerick City", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Kieran O'Donnell", Constituency: "Limerick City", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Willie O'Dea", Constituency: "Limerick City", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Maurice Quinlivan", Constituency: "Limerick City", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Jan O'Sullivan", Constituency: "Limerick City", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Cian Prendiville", Constituency: "Limerick City", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "James Gaffney", Constituency: "Limerick City", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Sarah Jane Hennelly", Constituency: "Limerick City", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Nora Bennis", Constituency: "Limerick City", Party: "Catholic Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Desmond Hayes", Constituency: "Limerick City", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Denis Riordan", Constituency: "Limerick City", Party: "Independant", Gender: "Male"});

--Candidates for Limerick County Constituency--

CREATE (:Candidate {Name: "Patrick O'Donovan", Constituency: "Limerick County", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Tom Neville", Constituency: "Limerick County", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Niall Collins", Constituency: "Limerick County", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Seamus Browne", Constituency: "Limerick County", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Mark Keogh", Constituency: "Limerick County", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "James Heffernan", Constituency: "Limerick County", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Alexander Cosgrave", Constituency: "Limerick County", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Emmett O'Brien", Constituency: "Limerick County", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Richard O'Donoghue", Constituency: "Limerick County", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John O'Gorman", Constituency: "Limerick County", Party: "Independant", Gender: "Male"});

--Candidates for Longford-Westmeath Constituency--

CREATE (:Candidate {Name: "Gabrielle McFadden", Constituency: "Longford-Westmeath", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "James Bannon", Constituency: "Longford-Westmeath", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Peter Burke", Constituency: "Longford-Westmeath", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Robert Troy", Constituency: "Longford-Westmeath", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Connie Gerrety-Quinn", Constituency: "Longford-Westmeath", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Willie Penrose", Constituency: "Longford-Westmeath", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Paul Hogan", Constituency: "Longford-Westmeath", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Manchán Magan", Constituency: "Longford-Westmeath", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Dom Parker", Constituency: "Longford-Westmeath", Party: "Anti Austerity Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Stephanie Healy", Constituency: "Longford-Westmeath", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Female"}),
	   (:Candidate {Name: "Noel Mckervey", Constituency: "Longford-Westmeath", Party: "Catholic Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Kevin Moran", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "James Morgan", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Barbara Smyth", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Donal Jackson", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Brian Fagan", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "James Miller", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mae Sexton", Constituency: "Longford-Westmeath", Party: "Independant", Gender: "Female"});

--Candidates for Louth Constituency--

CREATE (:Candidate {Name: "Fergus O'Dowd", Constituency: "Louth", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Peter Fitzpatrick", Constituency: "Louth", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Declan Breathnach", Constituency: "Louth", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Emma Coffey", Constituency: "Louth", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Mary Moran", Constituency: "Louth", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Ged Nash", Constituency: "Louth", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Gerry Adams", Constituency: "Louth", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Imelda Munster", Constituency: "Louth", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Michael O'Dowd", Constituency: "Louth", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Gareth Weldon", Constituency: "Louth", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Mark Dearey", Constituency: "Louth", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Anthony Connor", Constituency: "Louth", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Pat Greene", Constituency: "Louth", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Kevin Callan", Constituency: "Louth", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Maeve Yore", Constituency: "Louth", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "David Bradley", Constituency: "Louth", Party: "Independant", Gender: "Male"});

--Candidates for Mayo Constituency--

CREATE (:Candidate {Name: "Enda Kenny", Constituency: "Mayo", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Michael Ring", Constituency: "Mayo", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Michelle Mulherin", Constituency: "Mayo", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Lisa Chambers", Constituency: "Mayo", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Dara Calleary", Constituency: "Mayo", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Rose Conway-Walsh", Constituency: "Mayo", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Tom Moran", Constituency: "Mayo", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Michael Farrington", Constituency: "Mayo", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Margaret Sheehan", Constituency: "Mayo", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Gerry O'Boyle", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "George O'Malley", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Peter Jordan", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Jerry Cowley", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Kamal Uddin", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Sean Forkan", Constituency: "Mayo", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Stephen Manning", Constituency: "Mayo", Party: "Independant", Gender: "Male"});

--Candidates for Meath East Constituency--

CREATE (:Candidate {Name: "Regina Doherty", Constituency: "Meath East", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Helen McEntee", Constituency: "Meath East", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Thomas Byrne", Constituency: "Meath East", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Dominic Hannigan", Constituency: "Meath East", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Darren O'Rourke", Constituency: "Meath East", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Seán O'Buachalla", Constituency: "Meath East", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Seamus McDonagh", Constituency: "Meath East", Party: "Workers Party", Gender: "Male"}),
	   (:Candidate {Name: "Aisling O'Neill", Constituency: "Meath East", Party: "Social Democrats", Gender: "Female"}),
	   (:Candidate {Name: "Ben Gilroy", Constituency: "Meath East", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Sarah Tyrell", Constituency: "Meath East", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Sharon Keogan", Constituency: "Meath East", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Joe Bonner", Constituency: "Meath East", Party: "Independant", Gender: "Male"});

--Candidates for Meath West Constituency--

CREATE (:Candidate {Name: "Damien English", Constituency: "Meath West", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Ray Butler", Constituency: "Meath West", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Shane Cassells", Constituency: "Meath West", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Tracy McElhinney", Constituency: "Meath West", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Peadar Toibin", Constituency: "Meath West", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Seamus McMenamin", Constituency: "Meath West", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Alan Lawes", Constituency: "Meath West", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Trevor Golden", Constituency: "Meath West", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John Malone", Constituency: "Meath West", Party: "Independant", Gender: "Male"});
					
--Candidates for Offaly Constituency--

CREATE (:Candidate {Name: "Marcella Corcoran-Kennedy", Constituency: "Offaly", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Barry Cowen", Constituency: "Offaly", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Eddie Fitzpatrick", Constituency: "Offaly", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Carol Nolan", Constituency: "Offaly", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "John Leahy", Constituency: "Offaly", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Christopher Fettes", Constituency: "Offaly", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Ken Smollen", Constituency: "Offaly", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John Foley", Constituency: "Offaly", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Joe Hannigan", Constituency: "Offaly", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Teresa Ryan-Feehan", Constituency: "Offaly", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Kate Bopp", Constituency: "Offaly", Party: "Independant", Gender: "Female"});

--Candidates for Roscommon-Galway Constituency--

CREATE (:Candidate {Name: "Maura Hopkins", Constituency: "Roscommon-Galway", Party: "Fine Gael", Gender: "Female"}), 
       (:Candidate {Name: "Eugene Murphy", Constituency: "Roscommon-Galway", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Shane Curran", Constituency: "Roscommon-Galway", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "John Kelly", Constituency: "Roscommon-Galway", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Claire Kerrane", Constituency: "Roscommon-Galway", Party: "Sinn Fein", Gender: "Female"}),
	   (:Candidate {Name: "Eddie Conroy", Constituency: "Roscommon-Galway", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Anne Farrell", Constituency: "Roscommon-Galway", Party: "RENUA", Gender: "Female"}),
	   (:Candidate {Name: "Miriam Hennesy", Constituency: "Roscommon-Galway", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Michael Fitzmaurice", Constituency: "Roscommon-Galway", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Denis Naughten", Constituency: "Roscommon-Galway", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Thomas Declan Fallon", Constituency: "Roscommon-Galway", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Tony Coleman", Constituency: "Roscommon-Galway", Party: "Independant", Gender: "Male"});
		
--Candidates for Sligo-Leitrim Constituency--	

CREATE (:Candidate {Name: "Tony McLoughlin", Constituency: "Sligo-Leitrim", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Gerry Reynolds", Constituency: "Sligo-Leitrim", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "John Perry", Constituency: "Sligo-Leitrim", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Eamon Scanlon", Constituency: "Sligo-Leitrim", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Marc McSharry", Constituency: "Sligo-Leitrim", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Paddy O'Rourke", Constituency: "Sligo-Leitrim", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Susan O'Keeffe", Constituency: "Sligo-Leitrim", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "Martin Kenny", Constituency: "Sligo-Leitrim", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Chris MacManus", Constituency: "Sligo-Leitrim", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Finbar Filan", Constituency: "Sligo-Leitrim", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Nigel Gallagher", Constituency: "Sligo-Leitrim", Party: "People Before Profit Alliance", Gender: "Male"}),
	   (:Candidate {Name: "Leslie O'Hora", Constituency: "Sligo-Leitrim", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Marie Casserly", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Female"}),
	   (:Candidate {Name: "Declan Bree", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Des Guckian", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Bernard Sweeney", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Bernie O'Hara", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Eamonn Murray", Constituency: "Sligo-Leitrim", Party: "Independant", Gender: "Male"});

--Candidates for Tipperary Constituency--

CREATE (:Candidate {Name: "Noel Coonan", Constituency: "Tipperary", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Tom Hayes", Constituency: "Tipperary", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Marie Murphy", Constituency: "Tipperary", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Jackie Cahill", Constituency: "Tipperary", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Siobhan Ambrose", Constituency: "Tipperary", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Michael Smith", Constituency: "Tipperary", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Alan Kelly", Constituency: "Tipperary", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Seamus Morris", Constituency: "Tipperary", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Seamus Healy", Constituency: "Tipperary", Party: "Workers Party", Gender: "Male"}),
	   (:Candidate {Name: "Gearoid Fitzgibbon", Constituency: "Tipperary", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Michael Lowry", Constituency: "Tipperary", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Mattie McGrath", Constituency: "Tipperary", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Michael Dillon", Constituency: "Tipperary", Party: "Independant", Gender: "Male"});
					
--Candidates for Waterford Constituency--

CREATE (:Candidate {Name: "John Deasy", Constituency: "Waterford", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Paudie Coffey", Constituency: "Waterford", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Mary Butler", Constituency: "Waterford", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Ciara Conway", Constituency: "Waterford", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "David Cullinane", Constituency: "Waterford", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Grace O'Sullivan", Constituency: "Waterford", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "Mailo Power", Constituency: "Waterford", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Una Dunphy", Constituency: "Waterford", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Edward Quilty", Constituency: "Waterford", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "John Halligan", Constituency: "Waterford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Sheikh M Ahmed", Constituency: "Waterford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "John Walsh", Constituency: "Waterford", Party: "Independant", Gender: "Male"});

--Candidates for Wexford Constituency--				
					
CREATE (:Candidate {Name: "Paul Kehoe", Constituency: "Wexford", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Michael D'Arcy", Constituency: "Wexford", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Julie Hogan", Constituency: "Wexford", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Malcolm Byrne", Constituency: "Wexford", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "James Browne", Constituency: "Wexford", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Aoife Byrne", Constituency: "Wexford", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Brendan Howlin", Constituency: "Wexford", Party: "Labour", Gender: "Male"}),
	   (:Candidate {Name: "Johnny Mythen", Constituency: "Wexford", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Deirdre Wadding", Constituency: "Wexford", Party: "People Before Profit Alliance"}),
	   (:Candidate {Name: "Leonard Kelly", Constituency: "Wexford", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Ann Walsh", Constituency: "Wexford", Party: "Green Party", Gender: "Female"}),
	   (:Candidate {Name: "David Lloyd", Constituency: "Wexford", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Male"}),
	   (:Candidate {Name: "Mick Wallace", Constituency: "Wexford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Emmet Moloney", Constituency: "Wexford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Ger Carthy", Constituency: "Wexford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Paul O'Hanlon", Constituency: "Wexford", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Caroline Foxe", Constituency: "Wexford", Party: "Independant", Gender: "Female"});
					
--Candidates for Wicklow Constituency--			

CREATE (:Candidate {Name: "Andrew Doyle", Constituency: "Wicklow", Party: "Fine Gael", Gender: "Male"}), 
       (:Candidate {Name: "Simon Harris", Constituency: "Wicklow", Party: "Fine Gael", Gender: "Male"}),
	   (:Candidate {Name: "Avril Cronin", Constituency: "Wicklow", Party: "Fine Gael", Gender: "Female"}),
	   (:Candidate {Name: "Jennifer Cuffe", Constituency: "Wicklow", Party: "Fianna Fail", Gender: "Female"}),
	   (:Candidate {Name: "Pat Casey", Constituency: "Wicklow", Party: "Fianna Fail", Gender: "Male"}),
	   (:Candidate {Name: "Anne Ferris", Constituency: "Wicklow", Party: "Labour", Gender: "Female"}),
	   (:Candidate {Name: "John Brady", Constituency: "Wicklow", Party: "Sinn Fein", Gender: "Male"}),
	   (:Candidate {Name: "Anna Doyle", Constituency: "Wicklow", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Sharon Briggs", Constituency: "Wicklow", Party: "People Before Profit Alliance", Gender: "Female"}),
	   (:Candidate {Name: "Billy Timmins", Constituency: "Wicklow", Party: "RENUA", Gender: "Male"}),
	   (:Candidate {Name: "Stephen Donnelly", Constituency: "Wicklow", Party: "Social Democrats", Gender: "Male"}),
	   (:Candidate {Name: "Steven Matthews", Constituency: "Wicklow", Party: "Green Party", Gender: "Male"}),
	   (:Candidate {Name: "Joe Behan", Constituency: "Wicklow", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Charlie Keddy", Constituency: "Wicklow", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Bob Kearns", Constituency: "Wicklow", Party: "Independant", Gender: "Male"}),
	   (:Candidate {Name: "Katrina Hutchinson", Constituency: "Wicklow", Party: "Direct Democracy Ireland a National Citizens Movement Conference", Gender: "Female"});
					

//3. THE FOLLOWING QUERIES CREATE THE RELATIONSHIPS BETWEEN CANDIDATES AND CONSTITUENCIES (RELATIONSHIP TYPE IS: 'CANDIDATE_IN')
//CANDIDATE NODES ARE RELATED TO A CONSTITUENCY NODES VIA THE 'CANDIDATE_IN' RELATIONSHIP DEPENDING ON THE CONSTITUENCY THE CANDIDATE IS INVOLVED IN

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Carlow-Kilkenny' and the 'Carlow-Kilkenny' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Carlow-Kilkenny" AND cand.Constituency = "Carlow-Kilkenny"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cavan-Monaghan' and the 'Cavan-Monaghan' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cavan-Monaghan" AND cand.Constituency = "Cavan-Monaghan"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Clare' and the 'Clare' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Clare" AND cand.Constituency = "Clare"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cork East' and the 'Cork East' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cork East" AND cand.Constituency = "Cork East"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cork North-Central' and the 'Cork North-Central' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cork North-Central" AND cand.Constituency = "Cork North-Central"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cork North-West' and the 'Cork North-West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cork North-West" AND cand.Constituency = "Cork North-West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cork South-Central' and the 'Cork South-Central' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cork South-Central" AND cand.Constituency = "Cork South-Central"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Cork South-West' and the 'Cork South-West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Cork South-West" AND cand.Constituency = "Cork South-West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Donegal' and the 'Donegal' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Donegal" AND cand.Constituency = "Donegal"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin Bay North' and the 'Dublin Bay North' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Bay North" AND cand.Constituency = "Dublin Bay North"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin Bay South' and the 'Dublin Bay South' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Bay South" AND cand.Constituency = "Dublin Bay South"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin Central' and the 'Dublin Central' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Central" AND cand.Constituency = "Dublin Central"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin Fingal' and the 'Dublin Fingal' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Fingal" AND cand.Constituency = "Dublin Fingal"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin Mid-West' and the 'Dublin Mid-West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Mid-West" AND cand.Constituency = "Dublin Mid-West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin North-West' and the 'Dublin North-West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin North-West" AND cand.Constituency = "Dublin North-West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship between candidate nodes with a Constituency property of 'Dublin Rathdown' and the 'Rathdown' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin Rathdown" AND cand.Constituency = "Rathdown"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin South-Central' and the 'Dublin South-Central' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin South-Central" AND cand.Constituency = "Dublin South-Central"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin South-West' and the 'Dublin South-West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin South-West" AND cand.Constituency = "Dublin South-West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dublin West' and the 'Dublin West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dublin West" AND cand.Constituency = "Dublin West"
CREATE (cand)-[:CANDIDATE_IN{Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Dun Laoghaire' and the 'Dun Laoghaire' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Dun Laoghaire" AND cand.Constituency = "Dun Laoghaire"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Galway East' and the 'Galway East' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Galway East" AND cand.Constituency = "Galway East"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Galway West' and the 'Galway West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Galway West" AND cand.Constituency = "Galway West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Kerry' and the 'Kerry' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Kerry" AND cand.Constituency = "Kerry"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Kildare North' and the 'Kildare North' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Kildare North" AND cand.Constituency = "Kildare North"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates 'CANDIDATE_IN' a relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Kildare South' and the 'Kildare South' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Kildare South" AND cand.Constituency = "Kildare South"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Laois' and the 'Laois' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Laois" AND cand.Constituency = "Laois"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Limerick City' and the 'Limerick City' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Limerick City" AND cand.Constituency = "Limerick City"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Limerick County' and the 'Limerick County' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Limerick County" AND cand.Constituency = "Limerick County"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Longford-Westmeath' and the 'Longford-Westmeath' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Longford-Westmeath" AND cand.Constituency = "Longford-Westmeath"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Louth' and the 'Louth' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Louth" AND cand.Constituency = "Louth"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Mayo' and the 'Mayo' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Mayo" AND cand.Constituency = "Mayo"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Meath East' and the 'Meath East' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Meath East" AND cand.Constituency = "Meath East"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Meath West' and the 'Meath West' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Meath West" AND cand.Constituency = "Meath West"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Offaly' and the 'Offaly' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Offaly" AND cand.Constituency = "Offaly"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Roscommon-Galway' and the 'Roscommon-Galway' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Roscommon-Galway" AND cand.Constituency = "Roscommon-Galway"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Sligo-Leitrim' and the 'Sligo-Leitrim' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Sligo-Leitrim" AND cand.Constituency = "Sligo-Leitrim"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Tipperary' and the 'Tipperary' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Tipperary" AND cand.Constituency = "Tipperary"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Waterford' and the 'Waterford' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Waterford" AND cand.Constituency = "Waterford"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Wexford' and the 'Wexford' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Wexford" AND cand.Constituency = "Wexford"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);

--Creates a 'CANDIDATE_IN' relationship and an election property for it. This is between candidate nodes with a Constituency property of 'Wicklow' and the 'Wicklow' constituency node--

MATCH (cons:Constituency), (cand:Candidate)
WHERE cons.Name = "Wicklow" AND cand.Constituency = "Wicklow"
CREATE (cand)-[:CANDIDATE_IN {Election: "General 2016" }]->(cons);


//4. THE FOLLOWING QUERY CREATES NODES REPRESENTING ALL THE DIFFERENT POLITICAL PARTIES IN IRELAND

CREATE (:PoliticalParty {Name: "Fine Gael", Founded: "1933", Leader: "Enda Kenny"}),
	   (:PoliticalParty {Name: "Fianna Fail", Founded: "1926", Leader: "Micheal Martin"}),
	   (:PoliticalParty {Name: "Labour", Founded: "1912", Leader: "Joan Burton"}),
	   (:PoliticalParty {Name: "Sinn Fein", Founded: "1905", Leader: "Gerry Adams"}),
	   (:PoliticalParty {Name: "Green Party", Founded: "1981", Leader: "Eamon Ryan"}),
	   (:PoliticalParty {Name: "People Before Profit Alliance", Founded: "2005", Leader: "Collective Leadership"}),
	   (:PoliticalParty {Name: "Anti Austerity Alliance", Founded: "2014", Leader: "None"}),
	   (:PoliticalParty {Name: "RENUA", Founded: "2015", Leader: "Lucinda Creighton"}),
	   (:PoliticalParty {Name: "Direct Democracy Ireland a National Citizens Movement Conference", Founded: "2010", Leader: "Pat Greene"}),
	   (:PoliticalParty {Name: "Fis Nua", Founded: "2010", Leader: "None"}),
	   (:PoliticalParty {Name: "Social Democrats", Founded: "2015", Leader: "Stephen Donnelly"}),
	   (:PoliticalParty {Name: "Communist Party", Founded: "1933", Leader: "Lynda Walker"}),
	   (:PoliticalParty {Name: "Catholic Democrats", Founded: "1995", Leader: "Nora Bennis"}),
	   (:PoliticalParty {Name: "No Associated Party", Founded: "n/a", Leader: "None"}),
	   (:PoliticalParty {Name: "Workers Party", Founded: "1970", Leader: "Michael Donnelly"});
	   
	   
//5. THE FOLLOWING QUERIES CREATE THE RELATIONSHIPS BETWEEN CANDIDATE AND POLITICAL PARTY NODES (RELATIONSHIP TYPE IS: 'MEMBER_OF')
//CANDIDATE NODES ARE RELATED TO A POLITICAL PARTY NODES VIA THE 'MEMBER_OF' RELATIONSHIP DEPENDING ON THE CONSTITUENCY THE CANDIDATE IS INVOLVED IN

--Creates a relationship between Candidate nodes with a Party property of 'Fianna Fail' and the 'Fianna Fail' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Fianna Fail" AND pp.Name = "Fianna Fail"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Fine Gael' and the 'Fine Gael' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Fine Gael" AND pp.Name = "Fine Gael"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Labour' and the 'Labour' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Labour" AND pp.Name = "Labour"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Sinn Fein' and the 'Sinn Fein' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Sinn Fein" AND pp.Name = "Sinn Fein"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Green Party' and the 'Green Party' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Green Party" AND pp.Name = "Green Party"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'People Before Profit Alliance' and the 'People Before Profit Alliance' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "People Before Profit Alliance" AND pp.Name = "People Before Profit Alliance"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Anti Austerity Alliance' and the 'Anti Austerity Alliance' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Anti Austerity Alliance" AND pp.Name = "Anti Austerity Alliance"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'RENUA' and the 'RENUA' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "RENUA" AND pp.Name = "RENUA"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Direct Democracy Ireland a National Citizens Movement Conference' and the 'Direct Democracy Ireland a National Citizens Movement Conference' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Direct Democracy Ireland a National Citizens Movement Conference" AND pp.Name = "Direct Democracy Ireland a National Citizens Movement Conference"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Fis Nua' and the 'Fis Nua' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Fis Nua" AND pp.Name = "Fis Nua"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Social Democrats' and the 'Social Democrats' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Social Democrats" AND pp.Name = "Social Democrats"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Communist Party' and the 'Communist Party' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Communist Party" AND pp.Name = "Communist Party"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Catholic Democrats' and the 'Catholic Democrats' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Catholic Democrats" AND pp.Name = "Catholic Democrats"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Workers Party' and the 'Workers Party' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Workers Party" AND pp.Name = "Workers Party"
CREATE (cand)-[:MEMBER_OF]->(pp);

--Creates a relationship between Candidate nodes with a Party property of 'Independant' and the 'No Associated Party' PoliticalParty node--

MATCH (cand:Candidate), (pp:PoliticalParty)
WHERE cand.Party = "Independant" AND pp.Name = "No Associated Party"
CREATE (cand)-[:MEMBER_OF]->(pp);

//6. THE FOLLOWING QUERIES CREATE RELATIONSHIPS BETWEEN CANDIDATES AND CONSTITUENCIES NODES (RELATIONSHIP TYPE IS: 'ELECTED_IN')
//CANDIDATE NODES ARE RELATED TO A CONSTITUENCY NODE VIA THE 'ELECTED_IN' RELATIONSHIP DEPENDING ON THE CONSTITUENCY THE CANDIDATE IS INVOLVED IN AND IF THAT CANDIDATE WAS ACTUALLY
//ELECTED OR NOT. THE 'ELECTED_IN' RELATIONSHIP ALSO HAS AN 'Election' PROPERTY STATING WHICH ELECTION THE CANDIDATE WAS ELECTED IN.
//HENCE THESE RELATIONSHIPS SHOW WHICH CANDIDIDATE ARE ELECTED INTO WHICH CONSTITUENCY AND WHICH ELECTION IT WAS.

--Finds the names of the candidates that were elected in Carlow-Kilkenny and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property.

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["John Paul Phelan", "Kathleen Funchion", "Pat Deering", "John McGuinness", "Bobby Aylward"] AND can.Constituency = "Carlow-Kilkenny" AND con.Name = "Carlow-Kilkenny"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cavan–Monaghan and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property.
--The first query below is not working, it simply says that no rows were changed. I tried to find a solution as to why it was doing this but had no success, there is no reason
--that i can see why this query would not work, anyway because it didnt i was able to get the same result by running the four seperate queries that are below this one.  I feel
--this is an issue with Neo4J as this query works fine the majority of the time (also used in other places) and when broken up into seperate queries like below it also works fine.

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Brendan Smith", "Caoimhghin OCaolain", "Niamh Smyth", "Heather Humphries"] AND can.Constituency = "Cavan–Monaghan" AND con.Name = "Cavan–Monaghan" 
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--These four queries below were used instead of the one above (same result)

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Brendan Smith" AND can.Constituency = "Cavan-Monaghan" AND con.Name = "Cavan-Monaghan"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Caoimhghin OCaolain" AND can.Constituency = "Cavan-Monaghan" AND con.Name = "Cavan-Monaghan"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Niamh Smyth" AND can.Constituency = "Cavan-Monaghan" AND con.Name = "Cavan-Monaghan"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Heather Humphries" AND can.Constituency = "Cavan-Monaghan" AND con.Name = "Cavan-Monaghan"
CREATE (can)-[r:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Clare and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Pat Breen", "Joe Carey", "Timmy Dooley", "Michael Harty"] AND can.Constituency = "Clare" AND con.Name = "Clare"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cork East and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Pat Buckley", "David Stanton", "Sean Sherlock", "Kevin O'Keeffe"] AND can.Constituency = "Cork East" AND con.Name = "Cork East"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cork North-Central and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Billy Kelleher", "Jonathan O'Brien", "Dara Murphy", "Mick Barry"] AND can.Constituency = "Cork North-Central" AND con.Name = "Cork North-Central"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cork North-West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Aindrias Moynihan", "Michael Creed", "Michael Moynihan"] AND can.Constituency = "Cork North-West" AND con.Name = "Cork North-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cork South-Central and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Donnchadh O'Laoghaire", "Michael McGrath", "Micheal Martin", "Simon Coveney"] AND can.Constituency = "Cork South-Central" AND con.Name = "Cork South-Central"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Cork South–West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property
--The first query below is not working, it simply says that no rows were changed. I tried to find a solution as to why it was doing this but had no success, there is no reason
--that i can see why this query would not work, anyway because it didnt i was able to get the same result by running the three seperate queries that are below this one. I feel
--this is an issue with Neo4J as this query works fine the majority of the time (also used in other places) and when broken up into seperate queries like below it also works fine.

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Margaret Murphy-O'Mahony", "Jim Daly", "Michael Collins"] AND can.Constituency = "Cork South-West" AND con.Name = "Cork South–West" 
CREATE (can)-[r:ELECTED_IN {Election: "General 2016"}]->(con);

--These three queries below were used instead of the one above (same result)

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Margaret Murphy-O'Mahony" AND can.Constituency = "Cork South-West" AND con.Name = "Cork South-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Jim Daly" AND can.Constituency = "Cork South-West" AND con.Name = "Cork South-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Michael Collins" AND can.Constituency = "Cork South-West" AND con.Name = "Cork South-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Donegal and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Charlie McConalogue", "Pearse Doherty", "Pat The Cope Gallagher", "Joe McHugh", "Thomas Pringle"] AND can.Constituency = "Donegal" AND con.Name = "Donegal"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Bay North and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Richard Bruton", "Sean Haughey", "Tommy Broughan", "Finian McGrath", "Denise Mitchell"] AND can.Constituency = "Dublin Bay North" AND con.Name = "Dublin Bay North"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Bay South and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Eamon Ryan", "Eoghan Murphy", "Jim O'Callaghan", "Kate O'Connell"] AND can.Constituency = "Dublin Bay South" AND con.Name = "Dublin Bay South"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Central and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Paschal Donohoe", "Maureen O'Sullivan", "Mary Lou McDonald"] AND can.Constituency = "Dublin Central" AND con.Name = "Dublin Central"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Fingal and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Darragh O'Brien", "Clare Daly", "Alan Farrell", "Brendan Ryan", "Louise O'Reilly"] AND can.Constituency = "Dublin Fingal" AND con.Name = "Dublin Fingal"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Mid–West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property.
--The first query below is not working, it simply says that no rows were changed. I tried to find a solution as to why it was doing this but had no success, there is no reason
--that i can see why this query would not work, anyway because it didnt i was able to get the same result by running the four seperate queries that are below this one. I feel
--this is an issue with Neo4J as this query works fine the majority of the time (also used in other places) and when broken up into seperate queries like below it also works fine.

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Frances Fitzgerald", "Eoin O'Broin", "John Curran", "Gino Kenny"] AND can.Constituency = "Dublin Mid-West" AND con.Name = "Dublin Mid–West" 
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--These four queries below were used instead of the one above (same result)

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Frances Fitzgerald" AND can.Constituency = "Dublin Mid-West" AND con.Name = "Dublin Mid-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Eoin O'Broin" AND can.Constituency = "Dublin Mid-West" AND con.Name = "Dublin Mid-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "John Curran" AND can.Constituency = "Dublin Mid-West" AND con.Name = "Dublin Mid-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name = "Gino Kenny" AND can.Constituency = "Dublin Mid-West" AND con.Name = "Dublin Mid-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin North–West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property.
--The first query below is not working, it simply says that no rows were changed. I tried to find a solution as to why it was doing this but had no success, there is no reason
--that i can see why this query would not work, anyway because it didnt i was able to get the same result by running the three seperate queries that are below this one. I feel
--this is an issue with Neo4J as this query works fine the majority of the time (also used in other places) and when broken up into seperate queries like below it also works fine.

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Dessie Ellis", "Roisin Shortall", "Noel Rock"] AND can.Constituency = "Dublin North-West" AND con.Name = "Dublin North–West" 
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--These three queries below were used instead of the one above (same result)

MATCH (can:Candidate), (con:Constituency)																		//This didnt work but the query below it (same just on a single line)
WHERE can.Name = "Dessie Ellis" AND can.Constituency = "Dublin North–West" AND con.Name = "Dublin North–West"	//does work, this is just Neo4J being fussy
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency) WHERE can.Name = "Dessie Ellis" AND can.Constituency = "Dublin North-West" AND con.Name = "Dublin North-West" CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)																			//This didnt work but the query below it (same just on a single line)
WHERE can.Name = "Roisin Shortall" AND can.Constituency = "Dublin North–West" AND con.Name = "Dublin North–West"	//does work, this is just Neo4J being fussy
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency) WHERE can.Name = "Roisin Shortall" AND can.Constituency = "Dublin North-West" AND con.Name = "Dublin North-West" CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency)																		//This didnt work but the query below it (same just on a single line)
WHERE can.Name = "Noel Rock" AND can.Constituency = "Dublin North–West" AND con.Name = "Dublin North–West"		//does work, this is just Neo4J being fussy
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

MATCH (can:Candidate), (con:Constituency) WHERE can.Name = "Noel Rock" AND can.Constituency = "Dublin North-West" AND con.Name = "Dublin North-West" CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin Rathdown and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property-

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Shane Ross", "Josepha Madigan", "Catherine Martin"] AND can.Constituency = "Rathdown" AND con.Name = "Dublin Rathdown"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin South-Central and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Catherine Byrne", "Joan Collins", "Bríd Smith", "Aengus O'Snodaigh"] AND can.Constituency = "Dublin South-Central" AND con.Name = "Dublin South-Central"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin South-West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Colm Brophy", "John Lahart", "Paul Murphy", "Sean Crowe", "Katherine Zappone"] AND can.Constituency = "Dublin South-West" AND con.Name = "Dublin South-West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dublin West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Leo Varadkar", "Ruth Coppinger", "Joan Burton", "Jack Chambers"] AND can.Constituency = "Dublin West" AND con.Name = "Dublin West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Dun Laoghaire and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Mary Mitchell O'Connor", "Richard Boyd Barrett", "Maria Bailey", "Sean Barrett"] AND can.Constituency = "Dun Laoghaire" AND con.Name = "Dun Laoghaire"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Galway East and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Sean Canney", "Anne Rabbitte", "Ciaran Cannon"] AND can.Constituency = "Galway East" AND con.Name = "Galway East"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Galway West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Sean Kyne", "Hildegarde Naughten", "Noel Grealish", "Eamon O'Cuiv", "Catherine Connolly"] AND can.Constituency = "Galway West" AND con.Name = "Galway West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Kerry and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Michael Healy-Rae", "Danny Healy-Rae", "John Brassill", "Brendan Griffin", "Martin Ferris"] AND can.Constituency = "Kerry" AND con.Name = "Kerry"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Kildare North and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Catherine Murphy", "Bernard Durkan", "James Lawless", "Frank O'Rourke"] AND can.Constituency = "Kildare North" AND con.Name = "Kildare North"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Kildare South and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Seán O'Fearghaíl", "Martin Heydon", "Fiona O'Loughlin"] AND can.Constituency = "Kildare South" AND con.Name = "Kildare South"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Laois and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Charlie Flanagan", "Sean Fleming", "Brian Stanley"] AND can.Constituency = "Laois" AND con.Name = "Laois"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Limerick City and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Michael Noonan", "Willie O'Dea", "Jan O'Sullivan", "Maurice Quinlivan"] AND can.Constituency = "Limerick City" AND con.Name = "Limerick City"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Limerick County and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Niall Collins", "Patrick O'Donovan", "Tom Neville"] AND can.Constituency = "Limerick County" AND con.Name = "Limerick County"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Longford-Westmeath and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Peter Burke", "Kevin Moran", "Willie Penrose", "Robert Troy"] AND can.Constituency = "Longford-Westmeath" AND con.Name = "Longford-Westmeath"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Louth and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Declan Breathnach", "Imelda Munster", "Fergus O'Dowd", "Gerry Adams", "Peter Fitzpatrick"] AND can.Constituency = "Louth" AND con.Name = "Louth"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Mayo and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Enda Kenny", "Michael Ring", "Lisa Chambers", "Dara Calleary"] AND can.Constituency = "Mayo" AND con.Name = "Mayo"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Meath East and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Thomas Byrne", "Regina Doherty", "Helen McEntee"] AND can.Constituency = "Meath East" AND con.Name = "Meath East"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Meath West and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Shane Cassells", "Peadar Toibin", "Damien English"] AND can.Constituency = "Meath West" AND con.Name = "Meath West"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Offaly and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Barry Cowen", "Marcella Corcoran-Kennedy", "Carol Nolan"] AND can.Constituency = "Offaly" AND con.Name = "Offaly"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Roscommon-Galway and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Denis Naughten", "Michael Fitzmaurice", "Eugene Murphy"] AND can.Constituency = "Roscommon-Galway" AND con.Name = "Roscommon-Galway"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Sligo-Leitrim and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Marc McSharry", "Martin Kenny", "Tony McLoughlin", "Eamon Scanlon"] AND can.Constituency = "Sligo-Leitrim" AND con.Name = "Sligo-Leitrim"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Tipperary and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Michael Lowry", "Mattie McGrath", "Alan Kelly", "Seamus Healy", "Jackie Cahill"] AND can.Constituency = "Tipperary" AND con.Name = "Tipperary"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Waterford and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["John Deasy", "David Cullinane", "John Halligan", "Mary Butler"] AND can.Constituency = "Waterford" AND con.Name = "Waterford"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Wexford and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Paul Kehoe", "Michael D'Arcy", "James Browne", "Brendan Howlin", "Mick Wallace"] AND can.Constituency = "Wexford" AND con.Name = "Wexford"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Finds the names of the candidates that were elected in Wicklow and then creates an 'ELECTED_IN' relationship between them and sets the relationships 'Election' property

MATCH (can:Candidate), (con:Constituency)
WHERE can.Name IN ["Simon Harris", "Stephen Donnelly", "John Brady", "Pat Casey", "Andrew Doyle"] AND can.Constituency = "Wicklow" AND con.Name = "Wicklow"
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

//7. CREATING A NODE TO REPRESENT THE DAIL

CREATE (de:Dail {Name: "Dail Eireann", Seats: "158", FirstFounded: "1919"});

//8. CREATING A NODE FOR THE CEANN COMHAIRLE (HEAD OF THE COUNCIL) OF THE DAIL.

CREATE (cc:CeannComhairle {Incumbent: "Sean O'Fearghaíl", IncumbentAppointed: "10 March 2016"});

//9a CREATE RELATIONSHIP BETWEEN THE CANDIDATE NODES THAT WERE ELECTED (HAVE AN ELECTED_IN RELATIONSHIP WITH THEIR CONSTITUENCY) AND THE DAIL NODE
//THE RELATIONSHIP WILL HAVE THE LABEL 'SEATED_IN'

MATCH (c:Candidate)-[:ELECTED_IN]->(:Constituency), (de:Dail)
CREATE (c)-[r:SEATED_IN]->(de) 
return c, r, de;

//9b EXACTLY THE SAME QUERY AS ABOVE EXCEPT THE FIRST TIME WE RAN THIS QUERY (ABOVE) ELECTED CANDIDATES FROM LAOIS WERE LEFT OUT, THIS QUERY ADDS THEM AS HAVING A 'SEATED_IN'
//RELATIONSHIP WITH THE DAIL NODE

MATCH (c:Candidate)-[:ELECTED_IN]->(:Constituency), (de:Dail)
WHERE c.Constituency = "Laois"
CREATE (c)-[r:SEATED_IN]->(de) 
return c, r, de;

//10. CREATE A RELATIONSHIP BETWEEN THE CEANN COMHAIRLE NODE AND DAIL NODE OF TYPE 'SEATED_IN' BECAUSE THE CEANN COMHAIRLE IS ALSO A MEMBER OF THE DAIL 

MATCH (cc:CeannComhairle), (de:Dail)
CREATE (cc)-[r:SEATED_IN]->(de)
RETURN cc, r, de;

//11. HERE WE ADD A 'TD' LABEL TO ANY NODE WITH A 'CANDIDATE' LABEL THAT ALSO HAS AN 'ELECTED_IN' RELATIONSHIP WITH A NODE THAT HAS A 'CONSTITUENCY' LABEL 
//HENCE ANY CANDIDATE THAT IS AN ELECTED TD GIVE IT A 'TD' LABEL

MATCH (can:Candidate)-[:ELECTED_IN]->(con:Constituency)
SET can:TD;

//12. HERE WE ADD A 'TD' LABEL TO THE CEANN COMHAIRLE NODE AS HE/SHE IS ALSO A TD IN THE DAIL

MATCH (cc:CeannComhairle)
SET cc:TD;

//13. A MISTAKE WAS MADE WITH THE CEANN COMHAIRLE NODE, THE FOLLOWING QUERIES INVOLVE RE-CORRECTING THAT MISTAKE. 

--The problem is that we have two identical people in the dail (Seán O'Fearghaíl) one version as a TD and Candidate, the other as the CeannComhairle, earlier this 
--caused me to delete Sean Barrett who should be a TD. Sean O'Fearghaíl should be a TD and CeannComhairle

--Need to re-create this node. He was deleted earlier to keep the seat number correct but is still a candidate

CREATE (:Candidate {Name: "Sean Barrett", Constituency: "Dun Laoghaire", Party: "Fine Gael", Gender: "Male"});

--Sean Barrett is a candidate of Dun Laoghaire so re-create CANDIDATE_IN relationship for him

MATCH (c:Candidate {Name: "Sean Barrett"}), (con:Constituency {Name: "Dun Laoghaire"})
CREATE (c)-[:CANDIDATE_IN]->(con);

--Sean Barrett was elected, so we need to re-create that relationship

MATCH (can:Candidate {Name: "Sean Barrett"}), (con:Constituency {Name: "Dun Laoghaire"})
CREATE (can)-[:ELECTED_IN {Election: "General 2016"}]->(con);

--Sean Barrett was elected so he is also seated in the dail, need to re-create that relationship

MATCH (can:Candidate {Name: "Sean Barrett"})-[:ELECTED_IN]->(con:Constituency {Name: "Dun Laoghaire"}), (de:Dail)
CREATE (can)-[r:SEATED_IN]->(de);

-- If Sean Barrett is in the Dail then he is a TD hence give him the TD label

MATCH (can:Candidate {Name: "Sean Barrett"})
SET can:TD;

-- Now delete the current CeannComhairle node. This deletes the record of Seán O'Fearghaíl as CeannComhairle node

MATCH (cc:CeannComhairle)
DETACH DELETE cc;

--Give Candidate and TD node Seán O'Fearghaíl another label of CeannComhairle instead of having a node dedicated to it

MATCH (c:TD {Name: "Seán O'Fearghaíl"})-[r:SEATED_IN]->(de:Dail)
SET c:CeannComhairle;



