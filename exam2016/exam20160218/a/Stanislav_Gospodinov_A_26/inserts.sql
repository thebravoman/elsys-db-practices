insert into Article_24(visible, url, name, tag_id)
	values(true, "jdsjdadasd", "name1", 1),
	(true, "jdsjdadasd", "name2", 2);

insert into Category(priority, name)
	values(12.6, "name1"),
	(1.6, "name2");

insert into User(gender, description, income, article_24_id)
	values("m", "long txt 1", 555.6, 1),
	("f", "long txt 2", 533.7, 2);

insert into Tag(description, name, category_id)
	values("sdksadl", "name1", 1),
	("dasd", "name2", 2);