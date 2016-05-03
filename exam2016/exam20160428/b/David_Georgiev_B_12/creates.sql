drop database if exists exam;
create database exam;
use exam;

create table Article_11 (
	id int primary key auto_increment,
	content longtext,
	visible boolean,
	published_on date
);

create table Category (
	id int primary key auto_increment,
	date_created_on date,
	description longtext
);

create table User (
	id int primary key auto_increment,
	created_on date,
	description longtext,
	name varchar(255)
);

create table Tag (
	id int primary key auto_increment,
	description varchar(255),
	name varchar(255)
);

alter table User add column category_id int unique;
alter table User add foreign key (category_id) references Category(id);

alter table Article_11 add column category_id int;
alter table Article_11 add foreign key (category_id) references Category(id);
alter table Article_11 add column tag_id int unique;
alter table Article_11 add foreign key (tag_id) references Tag(id);

