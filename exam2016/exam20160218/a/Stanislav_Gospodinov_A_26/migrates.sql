create table Article_24_part1(id int primary key auto_increment not null,
	name varchar(40));
create table Article_24_part2(id int primary key auto_increment not null,
	visible boolean,
	url varchar(255));
insert into Article_24_part1 select id, name from Article_24;
insert into Article_24_part2 select id, visible, url from Article_24;
drop table Article_24;