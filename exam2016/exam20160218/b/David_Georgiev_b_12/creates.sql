/*Б_12_Давид
Technological School 'Electronic Systems'
Sofia, 2016
Databases
Kiril Mitov & Dobromir Ivanov

1. Create the following tables
Create table Article_11
 with columns:
	 visible->boolean,	 created_on->date,	 price->currency,
Create table Category
 with columns:
	 date_created_on->date,	 description->long text,
Create table User
 with columns:
	 picture_url->string,	 age->integer,	 income->float,
Create table Tag
 with columns:
	 name->varchar,	 priority->int,
As a result SQL queries must be created

2. Connect the tables in the following way
User has a one to many connection to Article_11
Article_11 has a many to many connection to Category
Category has a many to one connection to Tag
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql
*/

CREATE TABLE Article_43 (
	visible INT(11),
	created_on DATE,
	price MONEY
);

CREATE TABLE Category (
	date_created_on DATE,
	description LONGTEXT
);

CREATE TABLE User (
	picture_url VARCHAR(255),
	age INT(11),
	income FLOAT
);

CREATE TABLE Tag (
	name VARCHAR(255),
	priority INT(11)
);

ALTER TABLE User ADD COLUMN article_11 INT(11);
ALTER TABLE article_11 ADD COLUMN User INT(11);
ALTER TABLE Category ADD COLUMN article_11 INT(11);
ALTER TABLE article_11 ADD COLUMN Category INT(11);
ALTER TABLE Category ADD COLUMN Tag INT(11);
ALTER TABLE Tag ADD Category INT(11);

