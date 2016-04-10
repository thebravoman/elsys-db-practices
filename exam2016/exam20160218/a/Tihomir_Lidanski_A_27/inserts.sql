INSERT INTO Article_ (name, created_on, price) 
VALUES ("Name", "2016-02-17", 25), 
("Name2", "2016-02-17", 10);

INSERT INTO Category (date_created_on, description) 
VALUES ("2016-02-17", "Loren Ipsum whatever was next"), 
("2016-02-17", "Smarter Than a Bus Driver");

INSERT INTO User (gender, created_on, name, article_26_id)
VALUES ("Male", "2016-02-17", "Edd", 2),
("Female", "2016-02-17", "Putin", 1);

INSERT INTO Tag (second_priority, hash)
VALUES (2, "gjuis567"),
(4, "n3456y78");

INSERT INTO Tag_Category (tag_id, category_id) 
VALUES (1, 2),
(2, 1);

INSERT INTO User_Category (user_id, category_id) 
VALUES (2, 1),
(1, 2);
