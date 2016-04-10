/*6. Execute the following migration
Separate Category on two tables
Category_part1 containing name
Category_part2 containing all the other fields
As a result SQL queries+code in other programming language must be create.
Write the queries from points 6 in a file called migrates.sql*/

create table Category_part1(
	id int(11) primary key not null auto_increment,
	tag_id int(11), foreign key(tag_id) references Tag(id),
	article_4_id int(11), foreign key(article_4_id) references Article_4(id),
    name varchar(41)
);

create table Category_part2(
	id int(11) primary key not null auto_increment,
	tag_id int(11), foreign key(tag_id) references Tag(id),
	article_4_id int(11), foreign key(article_4_id) references Article_4(id),
    priority double
);

insert into Category_part1 select id, tag_id, article_4_id, name from Category;
insert into Category_part2 select id, tag_id, article_4_id, priority from Category;

drop table Category;