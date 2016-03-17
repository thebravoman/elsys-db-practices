create database calendar;
use calendar;

create table Users(
	id int not null primary key auto_increment,
	name varchar(20),
	email varchar(30),
	age smallint);

create table Groups(
	id int not null primary key auto_increment,
	name varchar(20),
	date_founded_on date);

create table Events(
	id int not null primary key auto_increment,
	name varchar(20),
	data date,
	location varchar(50));

create table Groups_Users(
	id int not null primary key auto_increment,	
	user_id int not null,
	group_id int not null);

create table Groups_Events(
	id int not null primary key auto_increment,
	event_id int not null,
	group_id int not null);

alter table Groups_Users add foreign key (user_id) references Users(id);
alter table Groups_Users add foreign key (group_id) references Groups(id);

alter table Groups_Events add foreign key (event_id) references Events(id);
alter table Groups_Events add foreign key (group_id) references Groups(id);

