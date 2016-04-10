drop database if exists exam;
create database exam;
use exam;

create table Article_15 (

            id integer not null primary key auto_increment,

            password varchar(125),

            url varchar(125),

            price numeric(15,2)  
);

create table Category (

            id integer not null primary key auto_increment,

            description longtext,

            name varchar(125)  
);

create table User (

            id integer not null primary key auto_increment,

            created_on date,

            name varchar(125),

            picture_url varchar(125)  
);

create table Tag (

            id integer not null primary key auto_increment,

            name varchar(125),

            description varchar(125)  
);

alter table Tag add category_id integer;

alter table Tag add foreign key (category_id) references Category(id);

create table Tag_Article_15 (

            id integer not null primary key auto_increment,

            tag_id integer,

            article_15_id integer,

            foreign key (tag_id) references Tag(id),

            foreign key (article_15_id) references Article_15(id)
);

alter table Article_15 add user_id integer;

alter table Article_15 add foreign key (user_id) references User(id);