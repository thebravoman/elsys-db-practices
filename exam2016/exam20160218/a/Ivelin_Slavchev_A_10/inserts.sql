insert into article_9 (id, visible, content, url) values (1, true, 'cont1', '/url1'), 
	(2, true, 'cont2', '/url2');
insert into category (id, date_created_on, created_by, tag_id) values (1, '2010-10-10', 'first', 1),
	(2, '2010-12-12', 'second', 2);
insert into users (id, password, description, picture_url, article_id, category_id) values (1, 'pass1', '1st', '/pic_url1', 1, 1), 
	(2, 'pass2' ,'2nd', '/pic_url2', 2, 2);
insert into tag (id, name, hash, category_id) values (1, '1st', 'hash1', 1), (2, '2nd', 'hash2', 2);