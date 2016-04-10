USE exam;

#Inserting into table Tag
INSERT INTO Tag
	(priority,description)
VALUES
	(23,'LEVSKI I TECHNO'),
	(40,'LEVSKI I TECHNO'),
	(3,'LEVSKI I TECHNO'),
	(88,'LEVSKI I TECHNO'),
	(15,'LEVSKI I TECHNO');

#Inserting into table Article_24
INSERT INTO Article_24
	(published_on,price,password,tag_id)
VALUES
	('1914-02-07 13:04:20',82,'LEVSKI I TECHNO',1),
	('1914-02-07 13:04:20',54,'LEVSKI I TECHNO',2),
	('1914-02-07 13:04:20',96,'LEVSKI I TECHNO',3),
	('1914-02-07 13:04:20',96,'LEVSKI I TECHNO',4),
	('1914-02-07 13:04:20',99,'LEVSKI I TECHNO',5);

#Inserting into table User
INSERT INTO User
	(name,twitter,gender,article_24_id)
VALUES
	('LEVSKI I TECHNO','LEVSKI I TECHNO','female',1),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','female',2),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','male',3),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','female',4),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','male',5);

#Inserting into table Category
INSERT INTO Category
	(priority,description,user_id)
VALUES
	(52,'This is placeholder text: bla bla bla bla...',1),
	(50,'This is placeholder text: bla bla bla bla...',2),
	(38,'This is placeholder text: bla bla bla bla...',3),
	(14,'This is placeholder text: bla bla bla bla...',4),
	(14,'This is placeholder text: bla bla bla bla...',5);
