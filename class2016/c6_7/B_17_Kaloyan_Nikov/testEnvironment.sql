DROP DATABASE IF EXISTS testEnvironment;
CREATE DATABASE IF NOT EXISTS testEnvironment;
USE testEnvironment;

#Creating Tables
CREATE TABLE teachers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(45),
	lastname VARCHAR(45)
);
CREATE TABLE sessions (
	id INT PRIMARY KEY AUTO_INCREMENT,
	date DATE,
	session_notes VARCHAR(45)
);
CREATE TABLE statuses (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45)
);
CREATE TABLE packs (
	id INT PRIMARY KEY AUTO_INCREMENT,
	credit INT(25),
	dateconfirmed DATE,
	dateconsumed DATE,
	attendance DECIMAL(3,3)
);
CREATE TABLE clients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(45),
	lastname VARCHAR(45),
	email VARCHAR(45),
	phonenumber VARCHAR(10),
	status VARCHAR(45)
);
CREATE TABLE departments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45)
);
CREATE TABLE divisions_has_departments (
	id INT PRIMARY KEY AUTO_INCREMENT
);
CREATE TABLE divisions (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45)
);
CREATE TABLE companies (
	id INT PRIMARY KEY AUTO_INCREMENT,
	net_income FLOAT(4,3),
	name VARCHAR(45)
);
CREATE TABLE cities_has_departments (
	id INT PRIMARY KEY AUTO_INCREMENT
);
CREATE TABLE cities (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45)
);
CREATE TABLE countries (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(45)
);

#teachers has a one to many connection to sessions
ALTER TABLE sessions ADD COLUMN teachers_id INT;
ALTER TABLE sessions ADD CONSTRAINT FOREIGN KEY (teachers_id) REFERENCES teachers(id);

#statuses has a one to many connection to sessions
ALTER TABLE sessions ADD COLUMN statuses_id INT;
ALTER TABLE sessions ADD CONSTRAINT FOREIGN KEY (statuses_id) REFERENCES statuses(id);

#packs has a one to many connection to sessions
ALTER TABLE sessions ADD COLUMN packs_id INT;
ALTER TABLE sessions ADD CONSTRAINT FOREIGN KEY (packs_id) REFERENCES packs(id);

#clients has a one to many connection to packs
ALTER TABLE packs ADD COLUMN clients_id INT;
ALTER TABLE packs ADD CONSTRAINT FOREIGN KEY (clients_id) REFERENCES clients(id);

#departments has a one to many connection to clients
ALTER TABLE clients ADD COLUMN departments_id INT;
ALTER TABLE clients ADD CONSTRAINT FOREIGN KEY (departments_id) REFERENCES departments(id);

#departments has a one to many connection to divisions_has_departments
ALTER TABLE divisions_has_departments ADD COLUMN departments_id INT;
ALTER TABLE divisions_has_departments ADD CONSTRAINT FOREIGN KEY (departments_id) REFERENCES departments(id);

#divisions has a one to many connection to divisions_has_departments
ALTER TABLE divisions_has_departments ADD COLUMN divisions_id INT;
ALTER TABLE divisions_has_departments ADD CONSTRAINT FOREIGN KEY (divisions_id) REFERENCES divisions(id);

#companies has a one to many connection to divisions
ALTER TABLE divisions ADD COLUMN companies_id INT;
ALTER TABLE divisions ADD CONSTRAINT FOREIGN KEY (companies_id) REFERENCES companies(id);

#departments has a one to many connection to cities_has_departments
ALTER TABLE cities_has_departments ADD COLUMN departments_id INT;
ALTER TABLE cities_has_departments ADD CONSTRAINT FOREIGN KEY (departments_id) REFERENCES departments(id);

#cities has a one to many connection to cities_has_departments
ALTER TABLE cities_has_departments ADD COLUMN cities_id INT;
ALTER TABLE cities_has_departments ADD CONSTRAINT FOREIGN KEY (cities_id) REFERENCES cities(id);

#countries has a one to many connection to cities
ALTER TABLE cities ADD COLUMN countries_id INT;
ALTER TABLE cities ADD CONSTRAINT FOREIGN KEY (countries_id) REFERENCES countries(id);

INSERT INTO teachers
	(firstname,lastname)
VALUES
	('Gabe','Newell'),
	('Petur','Ivanov'),
	('Yami','Yugi');

INSERT INTO statuses
	(name)
VALUES
	('status_1'),
	('status_2'),
	('status_3');

INSERT INTO countries
	(name)
VALUES
	('Bulgaria'),
	('The Netherlands'),
	('The Realm of Shadows');

INSERT INTO companies
	(name, net_income)
VALUES
	('Konami', '5432.21'),
	('Valve', '3214.15'),
	('Blizzard', '4242.42');

INSERT INTO departments
	(name)
VALUES
	('Konami_department'),
	('Valve_department'),
	('Blizzard_department');

INSERT INTO divisions
	(name, companies_id)
VALUES
	('Konami_division', '1'),
	('Valve_division', '2'),
	('Blizzard_division', '3');

INSERT INTO cities
	(name, countries_id)
VALUES
	('Sofia', '1'),
	('Eindhoven', '2'),
	('Bakora', '3');

INSERT INTO divisions_has_departments
	(departments_id, divisions_id)
VALUES
	('1', '1'),
	('2', '2'),
	('3', '3');

INSERT INTO cities_has_departments
	(departments_id, cities_id)
VALUES
	('1', '1'),
	('2', '2'),
	('3', '3');

INSERT INTO clients
	(firstname, lastname, email, phonenumber, status, departments_id)
VALUES
	('Kaloyan', 'Nikov', 'yugiohchampion@realmofshadows.ygo', '76746546', 'Married', '3'),
	('Snoop', 'Dog', 'smokeweed@everyday.sg', '69696969', 'Divorced', '2'),
	('Pavel', 'Petrov', 'pafkata@rofl.com', '42424242','In engineering', '1');

INSERT INTO packs
	(credit, dateconfirmed, dateconsumed, attendance, clients_id)
VALUES
	('69', '2016-7-04', '2016-8-04', '54.12', '1'),
	('42', '2016-2-21', '2016-3-21', '78.58', '2'),
	('24', '2016-1-17', '2016-2-17', '98.12', '3');

INSERT INTO sessions
	(date, session_notes, teachers_id, statuses_id, packs_id)
VALUES
	('2016-7-06', 'Very intresting', '1', '1', '1'),
	('2016-2-23', 'Not enough minerals', '2', '2', '2'),
	('2016-1-19', 'We require more vespine gas', '3', '3', '3');
