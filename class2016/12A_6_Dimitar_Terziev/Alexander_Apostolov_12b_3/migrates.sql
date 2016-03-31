create table user_part1 (
picture_url varchar(100)
);

create table user_part2 (
id int primary key,
description text,
income float,
tag_id int
);

insert into user_part1 (picture_url) 
select picture_url from user;

insert into user_part2 (id, description, income, tag_id) 
select id, description, income, tag_id from user;

drop table user;

