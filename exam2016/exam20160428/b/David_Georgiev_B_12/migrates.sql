use exam;

create table Category_part1 (
	id int primary key auto_increment,
	date_created_on date
);

insert into Category_part1 (date_created_on) select date_created_on from Category;
alter table Category drop column date_created_on;
alter table Category rename Category_part2;