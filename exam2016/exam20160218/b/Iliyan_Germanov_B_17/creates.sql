DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;
USE exam;

#1. Create the following tables
CREATE TABLE Article_16 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	price FLOAT,
	url VARCHAR(255),
	password VARCHAR(255)
);
CREATE TABLE Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	date_created_on DATETIME
);
CREATE TABLE User (
	id INT PRIMARY KEY AUTO_INCREMENT,
	description TEXT,
	gender VARCHAR(6),
	name VARCHAR(255)
);
CREATE TABLE Tag (
	id INT PRIMARY KEY AUTO_INCREMENT,
	hash VARCHAR(16),
	name VARCHAR(255)
);


#2. Connect the tables in the following way
#User has a many to many connection to Article_16
CREATE TABLE User_Article_16 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT NOT NULL,
	article_16_id INT NOT NULL,
	FOREIGN KEY (article_16_id) REFERENCES Article_16(id),
	FOREIGN KEY (user_id) REFERENCES User(id)
);

#Article_16 has a many to one connection to Tag
ALTER TABLE Article_16 ADD COLUMN tag_id INT;
ALTER TABLE Article_16 ADD CONSTRAINT FOREIGN KEY (tag_id) REFERENCES Tag(id);

#Tag has a one to one connection to Category
ALTER TABLE Tag ADD COLUMN category_id INT UNIQUE;
ALTER TABLE Tag ADD CONSTRAINT FOREIGN KEY (category_id) REFERENCES Category(id);
