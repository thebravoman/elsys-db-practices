create database calendar;

create table users(
	id int primary key not null auto_increment, 
	name varchar(20), 
	email varchar(20)
);

create table groups(
	id int primary key not null auto_increment, 
	name varchar(20), 
	date_founded_on datetime
);

create table events(
	id int primary key not null auto_increment, 
	name varchar(20), 
	date datetime, 
	location varchar(20)
);

create table usergroups(
	id int primary key not null auto_increment, 
	user_id int NOT NULL, 
	group_id int NOT NULL
);

create table groupevents(
	id int primary key not null auto_increment, 
	group_id int not null, 
	event_id int not null
);
