
#Inserting into table Category
INSERT INTO Category
	(description,created_by)
VALUES
	('Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),
	('Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),
	('Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),
	('Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),
	('Az naistina prodavam liutenica','PRODAVAM LIUTENICA');

#Inserting into table Article_18
INSERT INTO Article_18
	(name,price,url,category_id)
VALUES
	('PRODAVAM LIUTENICA',13,'PRODAVAM LIUTENICA',1),
	('PRODAVAM LIUTENICA',82,'PRODAVAM LIUTENICA',2),
	('PRODAVAM LIUTENICA',69,'PRODAVAM LIUTENICA',3),
	('PRODAVAM LIUTENICA',23,'PRODAVAM LIUTENICA',4),
	('PRODAVAM LIUTENICA',48,'PRODAVAM LIUTENICA',5);

#Inserting into table Tag
INSERT INTO Tag
	(hash,name,category_id)
VALUES
	('m5b2l3213b461443','PRODAVAM LIUTENICA',1),
	('m5b2l3213b461443','PRODAVAM LIUTENICA',2),
	('m5b2l3213b461443','PRODAVAM LIUTENICA',3),
	('m5b2l3213b461443','PRODAVAM LIUTENICA',4),
	('m5b2l3213b461443','PRODAVAM LIUTENICA',5);

#Inserting into table User
INSERT INTO User
	(picture_url,description,age,article_18_id)
VALUES
	('http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',88,1),
	('http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',72,2),
	('http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',21,3),
	('http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',95,4),
	('http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',62,5);
