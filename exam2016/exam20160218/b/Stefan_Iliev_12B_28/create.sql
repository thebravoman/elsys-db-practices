/*1. Create the following tables
Create table Article_26
 with columns:
	 published_on->date,	 created_on->date,	 name->varchar,
Create table Category
 with columns:
	 name->varchar,	 priority->double,
Create table User
 with columns:
	 income->float,	 created_on->date,	 description->long text,
Create table Tag
 with columns:
	 hash->varchar(16),	 description->varchar,
As a result SQL queries must be created*/

CREATE TABLE Article_26 (
    published_on DATETIME,
    created_on DATETIME,
    name VARCHAR(255)
);

CREATE TABLE Category (
    name VARCHAR(255),
    priority DOUBLE
);

CREATE TABLE User (
    income FLOAT,
    created_on DATETIME,
    descripton TEXT,
);

CREATE TABLE Tag (
    hash VARCHAR(16),
    description VARCHAR(255), 
);
