drop database if exists calendar;
create database calendar;
use calendar;

create table users(
	id int primary key auto_increment,
	name varchar(20),
	email varchar(20),
	age int
);

create table Groups (
	name varchar(20),
	date_founded_on date
);

create table Events (
	name varchar(50),
	date date,
	location varchar(50)
);

create table user_groups (
	id int,
	user_id int,
	group_id int
);

create table group_events (
  id int,
  group_id int,
  event_id int
);
