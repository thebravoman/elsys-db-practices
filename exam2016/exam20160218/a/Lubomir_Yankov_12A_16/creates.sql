CREATE TABLE Article_15 (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	price varchar(5),
	published_on date,
	url varchar(50)
);

CREATE TABLE Category (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	created_by varchar(50),
	name varchar(50)
);

CREATE TABLE User (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	password varchar(50),
	created_on date,
	picture_url varchar(50)
);

CREATE TABLE Tag (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	priority INT,
	name varchar(50)
);

CREATE TABLE Tag_User (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	tag_id INT,
	user_id INT
);
ALTER TABLE User ADD COLUMN category_id INT;
ALTER TABLE Article_15 ADD COLUMN category_id INT;