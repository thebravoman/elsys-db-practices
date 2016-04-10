insert into Category (description, name) values("description1", "name1");

insert into Category (description, name) values("description2", "name2");

insert into Tag (name, description, category_id) values("name1", "description1", 1);

insert into Tag (name, description, category_id) values("name2", "description2", 2);

insert into Article_15 (password, url, price, user_id) values("password1", "url1", 12.91, 1);

insert into Article_15 (password, url, price, user_id) values("password2", "url2", 12.92, 2);

insert into Tag_Article_15 (tag_id, article_15_id) values(1, 1);

insert into Tag_Article_15 (tag_id, article_15_id) values(2, 2);