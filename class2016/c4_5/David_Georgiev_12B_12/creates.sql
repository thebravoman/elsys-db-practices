DROP DATABASE IF EXISTS calendar;
CREATE DATABASE calendar;
USE calendar;
CREATE TABLE User (
	id int(10) primary key auto_increment,
	email varchar(40),
	age int(10),
	name varchar(30)
);

CREATE TABLE Groups (
	UID int(10) primary key auto_increment,
	name varchar(30),
	Date_founded_on Date
);


CREATE TABLE Events (
	UID int(10) primary key auto_increment,
	name Varchar(50),
	date Date,
	location Varchar(50)
);

CREATE TABLE Group_events (
	UID int(10) primary key auto_increment,
	group_id int(10),
	event_id int(10)
);

CREATE TABLE User_Group (
	UID int(10) primary key auto_increment,
	user_id int(10),
	Groups_id int(10)
);
