
#Inserting into table Article_19
INSERT INTO Article_19
	(published_on,created_on,visible)
VALUES
	('1914-02-07 13:04:20','1914-02-07 13:04:20',FALSE),
	('1914-02-07 13:04:20','1914-02-07 13:04:20',FALSE),
	('1914-02-07 13:04:20','1914-02-07 13:04:20',FALSE);

#Inserting into table User
INSERT INTO User
	(twitter,password,created_on)
VALUES
	('LEVSKI I TECHNO','LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','LEVSKI I TECHNO','1914-02-07 13:04:20');

#Inserting into table Tag
INSERT INTO Tag
	(name,description,article_19_id)
VALUES
	('LEVSKI I TECHNO','LEVSKI I TECHNO',1),
	('LEVSKI I TECHNO','LEVSKI I TECHNO',2),
	('LEVSKI I TECHNO','LEVSKI I TECHNO',3);

#Inserting into table User_Article_19
INSERT INTO User_Article_19
	(user_id,article_19_id)
VALUES
	(1,1),
	(2,2),
	(3,3);

#Inserting into table Category
INSERT INTO Category
	(created_by,name,tag_id)
VALUES
	('LEVSKI I TECHNO','LEVSKI I TECHNO',1),
	('LEVSKI I TECHNO','LEVSKI I TECHNO',2),
	('LEVSKI I TECHNO','LEVSKI I TECHNO',3);
