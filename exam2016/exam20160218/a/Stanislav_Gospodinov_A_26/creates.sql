create table Article_24(id int primary key auto_increment not null,
	visible boolean,
	url varchar(255),
	name varchar(40));

create table Category(id int primary key auto_increment not null,
	priority double,
	name varchar(40));

create table User(id int primary key auto_increment not null,
	gender varchar(6),
	description text,
	income float);

create table Tag(id int primary key auto_increment not null,
	description varchar(50),
	name varchar(40));

alter table User add column article_24_id int;
alter table Article_24 add column tag_id int;
alter table Tag add column category_id int;