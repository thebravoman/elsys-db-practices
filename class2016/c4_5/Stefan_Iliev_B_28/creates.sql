DROP DATABASE IF EXISTS calendar;
CREATE DATABASE calendar;
USE calendar;

CREATE TABLE Users (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(32),
	email VARCHAR(32),
	age INT
);

CREATE TABLE Groups (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(32),
	date_founded_on DATETIME
);

CREATE TABLE Events (
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(32),
	date_ DATETIME,
	location VARCHAR(16)
);

CREATE TABLE Groups_Users (
	id int PRIMARY KEY AUTO_INCREMENT,
	group_id int,
	user_id int,
	FOREIGN KEY (group_id) REFERENCES Groups(id),
	FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Groups_Events (
	id int PRIMARY KEY AUTO_INCREMENT,
	group_id int,
	event_id int,
	FOREIGN KEY (group_id) REFERENCES Groups(id),
	FOREIGN KEY (event_id) REFERENCES Events(id)
);

