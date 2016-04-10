INSERT INTO Article_15 (price, published_on, url, category_id) VALUES
						("EUR", "2016-11-11", "www.url1.com", 1),
						("USD", "2016-12-12", "www.url2.com", 2);
INSERT INTO Category (name, created_by) VALUES
						("name1", "user1"),
						("name2", "user2");
INSERT INTO Tag (name, priority) VALUES
				("name1", 1),
				("name2", 2);
INSERT INTO Tag_User (tag_id, user_id) VALUES
					(1,1),
					(2,2);
INSERT INTO User (password, picture_url, created_on, category_id) VALUES
					("password1", "www.pic1.com", "2016-11-11", 1),
					("password2", "www.pic2.com", "2016-12-12", 2);
