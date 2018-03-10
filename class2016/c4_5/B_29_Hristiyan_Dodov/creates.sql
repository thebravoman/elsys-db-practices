create table users(
  id int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name varchar(20),
  email varchar(20),
  age smallint
);

create table groups(
  id int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name varchar(20),
  date_founded_on DATETIME
);

create table events(
  id int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name varchar(20),
  date_of_event DATETIME,
  location varchar(40)
);

create table groups_users(
  id int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  groups_id int(10),
  users_id int(10)
);

create table groups_events(
  id int(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  groups_id int(10),
  events_id int(10)
);
