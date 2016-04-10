INSERT INTO Article_25 (created_on, visible, url) VALUES
("02-03-12", true, "1/1/1/"),
("02-03-13", false, "2/2/2/");

INSERT INTO Category (created_by, priority, article_id) VALUES
("user1", 2.8, 1),
("user2", 3.5, 2);

INSERT INTO User (age, income, gender, category_id) VALUES
(10, 15.2, "male", 1),
(10, 15.2, "female", 2);

INSERT INTO Tag (name, priority) VALUES
("tag1", 1),
("tag2", 2);

INSERT INTO User_Tag (user_id, tag_id) VALUES
(1, 1),
(2, 2);