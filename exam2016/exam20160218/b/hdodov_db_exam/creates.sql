/*
1. Create the following tables
Create table Article_28
 with columns:
	 created_on->date,	 price->currency,	 content->long string,
Create table Category
 with columns:
	 created_by->string,	 description->long text,
Create table User
 with columns:
	 twitter->varchar,	 gender->varchar(6),	 picture_url->string,
Create table Tag
 with columns:
	 name->varchar,	 description->varchar,
As a result SQL queries must be created

2. Connect the tables in the following way
Article_28 has a many to one connection to User
User has a many to one connection to Tag
Tag has a many to many connection to Category
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql
*/

CREATE DATABASE hristiyan_29 IF NOT EXISTS;
USE hristiyan_29;

CREATE TABLE Article_28 (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    created_on DATETIME,
    price VARCHAR(255),
    content TEXT
);

CREATE TABLE Category (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    created_by VARCHAR(255),
    description TEXT
);

CREATE TABLE User (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	twitter VARCHAR(255),
	gender VARCHAR(6),
	picture_url VARCHAR(255)
);

CREATE TABLE Tag (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(255)
);

ALTER TABLE Article_28 ADD COLUMN user_id INT(11);
ALTER TABLE User ADD COLUMN tag_id INT(11);
CREATE TABLE Tag_Category(
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	tag_id INT(11),
	category_id INT(11)
);
