INSERT INTO Tag (description, priority) VALUES ("desc1", 1);
INSERT INTO Tag (description, priority) VALUES ("desc2", 5);

INSERT INTO User (created_on, password, name) VALUES (NOW(), "pass1", "pesho");
INSERT INTO User (created_on, password, name) VALUES (NOW(), "pass2", "tosho");

INSERT INTO Article_4 (name, visible, published_on, user_id) VALUES ("art1", true, NOW(), 1);
INSERT INTO Article_4 (name, visible, published_on, user_id) VALUES ("art2", false, NOW(), 2);

INSERT INTO Category (name, priority, tag_id, article_4_id) VALUES ("cat1", 1, 1, 2);
INSERT INTO Category (name, priority, tag_id, article_4_id) VALUES ("cat2", 2, 2, 1);


