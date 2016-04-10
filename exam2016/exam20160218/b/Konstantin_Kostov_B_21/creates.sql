DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;
USE exam;

#1. Create the following tables
CREATE TABLE Article_19 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	published_on DATETIME,
	created_on DATETIME,
	visible BOOLEAN
);
CREATE TABLE Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	created_by VARCHAR(255),
	name VARCHAR(255)
);
CREATE TABLE User (
	id INT PRIMARY KEY AUTO_INCREMENT,
	twitter VARCHAR(255),
	password VARCHAR(255),
	created_on DATETIME
);
CREATE TABLE Tag (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	description VARCHAR(255)
);


#2. Connect the tables in the following way
#User has a many to many connection to Article_19
CREATE TABLE User_Article_19 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	article_19_id INT,
	FOREIGN KEY (article_19_id) REFERENCES Article_19(id),
	FOREIGN KEY (user_id) REFERENCES User(id)
);

#Article_19 has a many to one connection to Tag
ALTER TABLE Tag ADD COLUMN article_19_id INT;
ALTER TABLE Tag ADD CONSTRAINT FOREIGN KEY (article_19_id) REFERENCES Article_19(id);

#Tag has a many to one connection to Category
ALTER TABLE Category ADD COLUMN tag_id INT;
ALTER TABLE Category ADD CONSTRAINT FOREIGN KEY (tag_id) REFERENCES Tag(id);
