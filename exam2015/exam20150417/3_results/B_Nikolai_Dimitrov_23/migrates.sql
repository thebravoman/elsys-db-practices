create table article_10_part1(
	id int,
	PRIMARY KEY (id),
	visible BOOLEAN NULL
);

create table article_10_part2(
	id int,
	PRIMARY KEY (id),
	password TEXT NULL,
	published_on DATE NULL,
);

insert into article_10_part1(id,visible) select id,visible from article_10
insert into article_10_part2(id,password,published_on) select id,password,published_on from article_10
