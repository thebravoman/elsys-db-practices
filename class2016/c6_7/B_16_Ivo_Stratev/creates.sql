drop database db;
create database db;

use db;

create table Users (
    id integer not null primary key auto_increment,
    Name varchar(20),
    Email varchar(20),
    Age date
);

create table Groups (
    id integer not null primary key auto_increment,
    Name varchar(20),
    Date_Founded_on date
);

create table Events (
    id integer not null primary key auto_increment,
    Date_ date,
    Name varchar(20),
    Location varchar(100)
);

create table Groups_Users (
    id integer not null primary key auto_increment,
    User_id integer not null,
    Group_id integer not null
);

alter table Groups_Users add foreign key (User_id) references Users(id);
alter table Groups_Users add foreign key (Group_id) references Groups(id);

create table Events_Groups (
    id integer not null primary key auto_increment,
    Event_id integer not null,
    Group_id integer not null
);

alter table Events_Groups add foreign key (Event_id) references Events(id);
alter table Events_Groups add foreign key (Group_id) references Groups(id);

select distinct Users.Name from Users
inner join Groups_Users on Groups_Users.User_id = Users.id
inner join Groups on Groups.id = Groups_Users.Group_id;