CREATE TABLE Article_6 ( 
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name varchar(255), 
	price double precision, 
	created_on date 
);

CREATE TABLE Category ( 
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name varchar(255), 
	date_created_on date 
);

CREATE TABLE User ( 
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	twitter varchar(255), 
	age integer, 
	income float 
);
CREATE TABLE Tag ( 
	description varchar(255), 
	hash varchar(255) 
);

/*connections*/
ALTER TABLE User ADD COLUMN tag_id int NOT NULL;

ALTER TABLE User ADD COLUMN article_6_id int NOT NULL;

ALTER TABLE Article_6 category_id int NOT NULL;