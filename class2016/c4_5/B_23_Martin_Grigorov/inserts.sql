INSERT INTO Users (email, age, name) VALUES ("test1@abv.bg", 12, "test1"); 
INSERT INTO Users (email, age, name) VALUES ("test2@abv.bg", 15, "test2");
INSERT INTO Users (email, age, name) VALUES ("old@abv.bg", 200, "test3");
INSERT INTO Users (email, age, name) VALUES ("test4@abv.bg", 17, "test4");

INSERT INTO Groups (name, Date_founded_on) VALUES ("test1","2016-04-21");
INSERT INTO Groups (name, Date_founded_on) VALUES ("test2","2016-10-12");
INSERT INTO Groups (name, Date_founded_on) VALUES ("test3","2015-02-22");
INSERT INTO Groups (name, Date_founded_on) VALUES ("test4","2016-03-11");

INSERT INTO Events (name, Date, Location) VALUES ("test1","2016-03-11","v gorata");
INSERT INTO Events (name, Date, Location) VALUES ("test2","2015-04-15","v TUES");
INSERT INTO Events (name, Date, Location) VALUES ("test3","2014-03-11","asd");
INSERT INTO Events (name, Date, Location) VALUES ("test4","2016-07-21","fgh");

INSERT INTO user_groups(user_id, groups_id) VALUES (1,2);
INSERT INTO user_groups(user_id, groups_id) VALUES (1,3);
INSERT INTO user_groups(user_id, groups_id) VALUES (2,2);
INSERT INTO user_groups(user_id, groups_id) VALUES (3,2);
