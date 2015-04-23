CREATE DATABASE `jony` DEFAULT CHARSET UTF8;
USE jony;
create table User (
    id integer not null primary key auto_increment,
    genre varchar(6),
    picture_url varchar(255),
    twitter varchar(255)
    );
create table Category (
    id integer not null primary key auto_increment,
    created_by varchar(255),
    date_created_on date,
    user_id integer,
    foreign key (user_id) references User(id)
);
create table Tag (
    id integer not null primary key auto_increment,
    second_priority float,
    hash varchar(16)
);
create table Article_30 (
    id integer not null primary key auto_increment,
    published_on date,
    name varchar(255),
    content varchar(255)
    

 



);
create table UserTable(
	id integer not null primary key auto_increment,
    tag_id integer,
    foreign key (tag_id) references Tag(id),
    user_id integer,
    foreign key (user_id) references User(id)
);
create table tagArticle_30(
id integer not null primary key auto_increment,
tag_id integer,
    foreign key (tag_id) references Tag(id),
    Article_30_id integer,
    foreign key (Article_30_id) references Article_30(id)
);
