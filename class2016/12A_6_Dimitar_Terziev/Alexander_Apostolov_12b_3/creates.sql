create database subd_exam;
use subd_exam;

create table article_1 (
id int primary key,
visible bit,
created_on date,
password varchar(50)
);

create table category (
id int primary key,
name varchar(50),
description text,
user_id int
);

create table user (
id int primary key,
description text,
picture_url varchar(100),
income float,
tag_id int
);

create table tag (
id int primary key,
priority int,
second_priority float
);

create table tag_to_category (
id int primary key,
tag_id int,
category_id int
);

