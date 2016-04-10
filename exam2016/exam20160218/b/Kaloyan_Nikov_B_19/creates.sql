DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;
USE exam;

#1. Create the following tables
CREATE TABLE Article_18 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	price FLOAT,
	url VARCHAR(255)
);
CREATE TABLE Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	description TEXT,
	created_by VARCHAR(255)
);
CREATE TABLE User (
	id INT PRIMARY KEY AUTO_INCREMENT,
	picture_url VARCHAR(255),
	description TEXT,
	age INT
);
CREATE TABLE Tag (
	id INT PRIMARY KEY AUTO_INCREMENT,
	hash VARCHAR(16),
	name VARCHAR(255)
);


#2. Connect the tables in the following way
#Tag has a one to one connection to Category
ALTER TABLE Tag ADD COLUMN category_id INT UNIQUE;
ALTER TABLE Tag ADD CONSTRAINT FOREIGN KEY (category_id) REFERENCES Category(id);

#Category has a one to many connection to Article_18
ALTER TABLE Article_18 ADD COLUMN category_id INT;
ALTER TABLE Article_18 ADD CONSTRAINT FOREIGN KEY (category_id) REFERENCES Category(id);

#Article_18 has a one to many connection to User
ALTER TABLE User ADD COLUMN article_18_id INT;
ALTER TABLE User ADD CONSTRAINT FOREIGN KEY (article_18_id) REFERENCES Article_18(id);
