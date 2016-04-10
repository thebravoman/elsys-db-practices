/*1. Create the following tables
Create table Article_1
 with columns:
	 created_on->date,	 password->string,	 name->varchar,
Create table Category
 with columns:
	 name->varchar,	 created_by->string,
Create table User
 with columns:
	 password->varchar,	 description->long text,	 age->integer,
Create table Tag
 with columns:
	 hash->varchar(16),	 description->varchar,
As a result SQL queries must be created

2. Connect the tables in the following way
Category has a one to many connection to User
User has a many to many connection to Tag
Tag has a one to many connection to Article_1
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql
*/

Article_43 has a one to many connection to Tag
Tag has a many to many connection to User
User has a many to one connection to Category
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql

CREATE TABLE Article_1 (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	created_on DATETIME,
	password VARCHAR(255),
	name VARCHAR(30)
);

CREATE TABLE Category (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	created_by CHARACTER(50),
	name VARCHAR(30)
);

CREATE TABLE User (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	password VARCHAR(255),
	description TEXT,
	age INT(11)
);

CREATE TABLE Tag (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	description VARCHAR(255),
	hash VARCHAR(16)
);

ALTER TABLE User ADD COLUMN Category_id INT(11);
CREATE TABLE User_Tag(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, tag_id INT(11), user_id INT(11));
ALTER TABLE Article_1 ADD COLUMN tag_id INT(11);
