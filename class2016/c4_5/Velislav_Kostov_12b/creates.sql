create database calendar;

create table users(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	email varchar(20)
);

create table groups(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	date_founded_on datetime
);

create table events(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	name varchar(20), 
	date datetime, 
	location varchar(20)
);

create table usergroups(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	user_id int NOT NULL, 
	group_id int NOT NULL
);

create table groupevents(
	id intPRIMARY KEY NOT NULL AUTO_INCREMENT, 
	group_id int not null, 
	event_id int not null
);