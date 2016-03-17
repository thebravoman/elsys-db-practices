USE calendar;

INSERT INTO	Users(name, email, age) VALUES 
	("Gosho", "killera@gmail", 32),
	("BMW", "mpower@mail", 18),
	("AMG", "bokluk@trash", 1);
	
INSERT INTO Groups(name, date_founded_on) VALUES
	("AMG", "2015-02-02 12:00:00"),
	("RenoSport", "2016-02-02 12:00:00"),
	("OpelDjigit", "2017-02-02 12:00:00");
	
INSERT INTO Events(name, date_, location) VALUES
	("DRAG", "2015-02-02 12:00:00", "12.14, 13.23"),
	("DRIFT", "2016-02-02 12:00:00", "12.14, 13.23"),
	("ZAVURSHVANE", "2016-02-02 12:30:00", "12.14, 13.23");
		
INSERT INTO Groups_Users (group_id, user_id) VALUES
	(1,1),
	(2,2),
	(3,3);
	
INSERT INTO Groups_Events (group_id, event_id) VALUES
	(1,1),
	(2,2),
	(3,3);
