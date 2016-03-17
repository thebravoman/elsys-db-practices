insert into Users (name, email, age) values 
  ("Pesho", "pesho@gmail.com", 22),
  ("Asen", "asen@gmail.com", 18),
  ("Momo", "momo@gmail.com", 25),
  ("Riki", "riki@gmail.com", 30),
  ("Naiden", "naiden@gmail.com", 38);

insert into Groups (name, date_founded_on) values
  ("Pesho", "2009-04-05"),
  ("Asen", "2008-06-11"),
  ("Momo", "2012-04-09"),
  ("Riki", "2013-18-08"),
  ("Naiden", "2010-22-10");

insert into Events (name, data, location) values 
  ("Pesho", "2010-05-12", "Pernik"),
  ("Asen", "2010-14-08", "Asenovgrad"),
  ("Momo", "2012-06-10", "Sofia"),
  ("Riki", "2014-19-04", "Blagoevgrad"),
  ("Naiden", "2011-27-12", "Plovdiv");

insert into Groups_Users (user_id, group_id) values
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
	
insert into Groups_Events (event_id, group_id) values
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
	
