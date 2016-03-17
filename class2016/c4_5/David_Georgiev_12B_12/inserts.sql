USE calendar;

INSERT INTO User (email,age,name) VALUE ("as444d@afd.go",13,"ivan1");
INSERT INTO User (email,age,name) VALUE ("adsd@afd.go",11,"ivan2");
INSERT INTO User (email,age,name) VALUE ("as21d@afd.go",14,"ivan3");
INSERT INTO User (email,age,name) VALUE ("as13d@afd.go",17,"ivan4");
INSERT INTO User (email,age,name) VALUE ("asdfgd@afdg.go",19,"ivan5");
INSERT INTO User (email,age,name) VALUE ("asd@afdsdf.go",10,"ivan6");

INSERT INTO Groups (name,Date_founded_on) VALUE ("group1","2016-03-20");
INSERT INTO Groups (name,Date_founded_on) VALUE ("group2","2016-01-12");
INSERT INTO Groups (name,Date_founded_on) VALUE ("group3","2016-08-17");
INSERT INTO Groups (name,Date_founded_on) VALUE ("group4","2016-03-13");

INSERT INTO Events (name,date,location) VALUE ("sreshta1","2016-05-23","tues");
INSERT INTO Events (name,date,location) VALUE ("sreshta2","2016-02-23","tues");
INSERT INTO Events (name,date,location) VALUE ("sreshta3","2016-07-23","tues");
INSERT INTO Events (name,date,location) VALUE ("sreshta4","2016-01-23","zad tva");

INSERT INTO Group_events (group_id,event_id) VALUE (1,3);
INSERT INTO Group_events (group_id,event_id) VALUE (4,2);
INSERT INTO Group_events (group_id,event_id) VALUE (3,1);

INSERT INTO User_Group (user_id,Groups_id) VALUE (1,3);
INSERT INTO User_Group (user_id,Groups_id) VALUE (4,2);
INSERT INTO User_Group (user_id,Groups_id) VALUE (5,1);
INSERT INTO User_Group (user_id,Groups_id) VALUE (2,4);
INSERT INTO User_Group (user_id,Groups_id) VALUE (2,1);
INSERT INTO User_Group (user_id,Groups_id) VALUE (2,2);
INSERT INTO User_Group (user_id,Groups_id) VALUE (1,4);
INSERT INTO User_Group (user_id,Groups_id) VALUE (3,2);
