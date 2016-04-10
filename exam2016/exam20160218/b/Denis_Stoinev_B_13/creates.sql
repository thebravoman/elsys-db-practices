DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;
USE exam;

#1. Create the following tables
CREATE TABLE Article_12 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	url VARCHAR(255),
	password VARCHAR(255),
	name VARCHAR(255)
);
CREATE TABLE Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	date_created_on DATETIME
);
CREATE TABLE User (
	id INT PRIMARY KEY AUTO_INCREMENT,
	created_on DATETIME,
	income FLOAT,
	gender VARCHAR(6)
);
CREATE TABLE Tag (
	id INT PRIMARY KEY AUTO_INCREMENT,
	priority INT,
	name VARCHAR(255)
);


#2. Connect the tables in the following way
#Article_12 has a one to many connection to Tag
ALTER TABLE Tag ADD COLUMN article_12_id INT;
ALTER TABLE Tag ADD CONSTRAINT FOREIGN KEY (article_12_id) REFERENCES Article_12(id);

#Tag has a many to many connection to Category
CREATE TABLE Tag_Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	tag_id INT NOT NULL,
	category_id INT NOT NULL,
	FOREIGN KEY (category_id) REFERENCES Category(id),
	FOREIGN KEY (tag_id) REFERENCES Tag(id)
);

#Category has a one to many connection to User
ALTER TABLE User ADD COLUMN category_id INT;
ALTER TABLE User ADD CONSTRAINT FOREIGN KEY (category_id) REFERENCES Category(id);