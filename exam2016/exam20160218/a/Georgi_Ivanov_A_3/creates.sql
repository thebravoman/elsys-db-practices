/*
a_3_Георги
Technological School 'Electronic Systems'
Sofia, 2016
Databases
Kiril Mitov & Dobromir Ivanov

1. Create the following tables
Create table Article_2
 with columns:
	 created_on->date,	 password->string,	 visible->boolean,
Create table Category
 with columns:
	 date_created_on->date,	 description->long text,
Create table User
 with columns:
	 description->long text,	 age->integer,	 password->varchar,
Create table Tag
 with columns:
	 name->varchar,	 priority->int,
As a result SQL queries must be created

2. Connect the tables in the following way
Tag has a many to one connection to User
User has a one to one connection to Category
Category has a one to one connection to Article_2
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql
*/

CREATE TABLE Article_2 (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	created_on DATETIME,
	password VARCHAR(255),
	visible BOOL
);

CREATE TABLE Category (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_created_on DATETIME,
	description TEXT
);

CREATE TABLE User (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	age INT(11),
	password VARCHAR(255),
	description TEXT
);

CREATE TABLE Tag (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	priority INT(11)
);
