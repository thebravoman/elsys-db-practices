
create table Article_19_part1(
	id int(11) auto_increment primary key,
	published_on DATETIME,
);

insert into Article_19_part1(url) 
select url
from Article_19;

create table Article_19_part2(
	id int(11) auto_increment primary key,
	created_on DATETIME,
	visible BOOLEAN
	Tag_id int(11),
	User_id int(11)
);

insert into Article_19_part2(id, created_on, visible BOOLEAN, Tag_id, User_id)
select id, content, password, Tag_id, User_id
from Article_19
