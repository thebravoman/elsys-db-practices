/*1. Create the following tables
Create table Article_4
 with columns:
	 name->varchar,	 visible->boolean,	 published_on->date,
Create table Category
 with columns:
	 name->varchar,	 priority->double,
Create table User
 with columns:
	 created_on->date,	 password->varchar,	 name->varchar,
Create table Tag
 with columns:
	 description->varchar,	 priority->int,
As a result SQL queries must be created*/

create table Article_4 (
	id int(11) not null primary key auto_increment,
	name varchar(41),
	visible boolean,
	published_on date
);
create table Category (
	id int(11) not null primary key auto_increment,
	name varchar(41),
	priority double
);
create table User (
	id int(11) not null primary key auto_increment,
	created_on date,
	password varchar(41),
	name varchar(41)
);
create table Tag (
	id int(11) not null primary key auto_increment,
	description varchar(41),
	priority int
);

/*2. Connect the tables in the following way
Tag has a one to one connection to Category
Category has a one to one connection to Article_4
Article_4 has a many to one connection to User
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql*/

alter table Category add column tag_id int, add foreign key (tag_id) references Tag(id);

alter table Category add column article_4_id int, add foreign key (article_4_id) references Article_4(id);

alter table Article_4 add column user_id int, add foreign key (user_id) references User(id);
