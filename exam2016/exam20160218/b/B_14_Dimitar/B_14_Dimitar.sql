CREATE DATABASE IF NOT EXISTS Dimitar;
USE Dimitar;
CREATE TABLE IF NOT EXISTS Article_13(
	password varchar(18) DEFAULT NULL,
	published_on DATE DEFAULT NULL,
	visible bool DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Category(
	description text DEFAULT NULL,
	created_by  varchar(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS User(
	age int(2) DEFAULT NULL,
	description varchar(20) DEFAULT NULL,
	gender varchar(6) DEFAULT NULL
);

