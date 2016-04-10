DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;
USE exam;

#1. Create the following tables
CREATE TABLE Article_24 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	published_on DATETIME,
	price FLOAT,
	password VARCHAR(255)
);
CREATE TABLE Category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	priority DOUBLE,
	description TEXT
);
CREATE TABLE User (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	twitter VARCHAR(255),
	gender VARCHAR(6)
);
CREATE TABLE Tag (
	id INT PRIMARY KEY AUTO_INCREMENT,
	priority INT,
	description VARCHAR(255)
);


#2. Connect the tables in the following way
#Category has a one to one connection to User
ALTER TABLE Category ADD COLUMN user_id INT UNIQUE;
ALTER TABLE Category ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES User(id);

#User has a one to one connection to Article_24
ALTER TABLE User ADD COLUMN article_24_id INT UNIQUE;
ALTER TABLE User ADD CONSTRAINT FOREIGN KEY (article_24_id) REFERENCES Article_24(id);

#Article_24 has a many to one connection to Tag
ALTER TABLE Article_24 ADD COLUMN tag_id INT;
ALTER TABLE Article_24 ADD CONSTRAINT FOREIGN KEY (tag_id) REFERENCES Tag(id);
