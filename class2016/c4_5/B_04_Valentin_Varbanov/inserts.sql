INSERT INTO TABLE Users_ (name, email, age) VALUES
("mladen", "mladen@gmail.com", 18),
("gero", "gero@gmail.com", 17),
("martin", "martin@gmail.com", 20),
("ico", "hristo@gmail.com", 19),
("stefan", "stefi@gmail.com", 18),
("gergan", "gergan@gmail.com", 40);

INSERT INTO TABLE Groups_ (name, founded_on) VALUES
("tues", "01.01.2005"),
("narkotici", "10.10.2010"),
("cafe", "02.02.2015");

INSERT INTO TABLE Events_ (name, location) VALUES
("nargileto", "studentski"),
("kum shipka", "planinata");

INSERT INTO TABLE Groups_Users_ (user_id, group_id) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 2),
(4, 3),
(1, 3);

INSERT INTO TABLE Group_Event_ (group_id, event_id) VALUES
(1, 2),
(2, 1),
(3, 1);

 
