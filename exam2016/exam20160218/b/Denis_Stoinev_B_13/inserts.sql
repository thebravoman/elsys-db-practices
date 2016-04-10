
#Inserting into table Article_12
INSERT INTO Article_12
	(url,password,name)
VALUES
	('Yo yo yo','Yo yo yo','Yo yo yo'),
	('Yo yo yo','Yo yo yo','Yo yo yo'),
	('Yo yo yo','Yo yo yo','Yo yo yo'),
	('Yo yo yo','Yo yo yo','Yo yo yo'),
	('Yo yo yo','Yo yo yo','Yo yo yo');

#Inserting into table Category
INSERT INTO Category
	(name,date_created_on)
VALUES
	('Yo yo yo','2016-04-01 07:07:07'),
	('Yo yo yo','2016-04-01 07:07:07'),
	('Yo yo yo','2016-04-01 07:07:07'),
	('Yo yo yo','2016-04-01 07:07:07'),
	('Yo yo yo','2016-04-01 07:07:07');

#Inserting into table Tag
INSERT INTO Tag
	(priority,name,article_12_id)
VALUES
	(91,'Yo yo yo',1),
	(21,'Yo yo yo',2),
	(31,'Yo yo yo',3),
	(41,'Yo yo yo',4),
	(26,'Yo yo yo',5);

#Inserting into table User
INSERT INTO User
	(created_on,income,gender,category_id)
VALUES
	('2016-04-01 07:07:07',56,'female',1),
	('2016-04-01 07:07:07',40,'male',2),
	('2016-04-01 07:07:07',83,'female',3),
	('2016-04-01 07:07:07',27,'female',4),
	('2016-04-01 07:07:07',88,'female',5);

#Inserting into table Tag_Category
INSERT INTO Tag_Category
	(tag_id,category_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
