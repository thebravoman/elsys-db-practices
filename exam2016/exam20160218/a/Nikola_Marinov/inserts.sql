INSERT INTO Article_19 (name, created_on, price) VALUES
("Ivan", "2016-04-03 05:08:07", 10),
("Ivan", "2016-04-03 05:08:08", 20);
 
INSERT INTO Category (description, date_created_on) VALUES
("neshto", "2016-04-03 05:08:07"),
("drugo", "2016-04-03 05:08:07");
 
INSERT INTO Tag (description, priority) VALUES
("dai", "1"),
("mu", "2");
 
INSERT INTO User (gender, created_on, twiter ) VALUES
("male", "2016-04-03 05:08:07", "ivan"),
("male", "2016-04-03 05:08:07", "ivan");
 
 INSERT INTO Tag_User (user_id, tag_id) VALUES
(1, 1),
(2, 1);
