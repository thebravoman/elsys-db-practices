DROP DATABASE IF EXISTS test_db;
CREATE DATABASE test_db;
USE test_db;

CREATE TABLE Article_25 (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	created_on DATE,
	visible boolean,
	url VARCHAR(255)
);

CREATE TABLE Category (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	created_by VARCHAR(255),
	priority DOUBLE,
	article_id INT references Article_25(id)
);

CREATE TABLE User (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	age INT,
	income float,
	gender VARCHAR(6),
	category_id INT references Category(id)
);

CREATE TABLE Tag (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(30),
	priority INT
);

CREATE TABLE User_Tag (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT references User(id),
	tag_id INT references Tag(id)
);










