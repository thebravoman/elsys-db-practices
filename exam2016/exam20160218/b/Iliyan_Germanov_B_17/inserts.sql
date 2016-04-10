USE exam;

#Inserting into table Category
INSERT INTO Category
	(name,date_created_on)
VALUES
	('LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','1914-02-07 13:04:20'),
	('LEVSKI I TECHNO','1914-02-07 13:04:20');

#Inserting into table User
INSERT INTO User
	(description,gender,name)
VALUES
	('This is placeholder text: bla bla bla bla...','female','LEVSKI I TECHNO'),
	('This is placeholder text: bla bla bla bla...','male','LEVSKI I TECHNO'),
	('This is placeholder text: bla bla bla bla...','female','LEVSKI I TECHNO'),
	('This is placeholder text: bla bla bla bla...','female','LEVSKI I TECHNO'),
	('This is placeholder text: bla bla bla bla...','female','LEVSKI I TECHNO');

#Inserting into table Tag
INSERT INTO Tag
	(hash,name,category_id)
VALUES
	('c8b1a9953c461129','LEVSKI I TECHNO',1),
	('c8b1a9953c461129','LEVSKI I TECHNO',2),
	('c8b1a9953c461129','LEVSKI I TECHNO',3),
	('c8b1a9953c461129','LEVSKI I TECHNO',4),
	('c8b1a9953c461129','LEVSKI I TECHNO',5);

#Inserting into table Article_16
INSERT INTO Article_16
	(price,url,password,tag_id)
VALUES
	(92,'LEVSKI I TECHNO','LEVSKI I TECHNO',1),
	(86,'LEVSKI I TECHNO','LEVSKI I TECHNO',2),
	(17,'LEVSKI I TECHNO','LEVSKI I TECHNO',3),
	(16,'LEVSKI I TECHNO','LEVSKI I TECHNO',4),
	(22,'LEVSKI I TECHNO','LEVSKI I TECHNO',5);

#Inserting into table User_Article_16
INSERT INTO User_Article_16
	(user_id,article_16_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
