CREATE TABLE Category_part1 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, created_by DATE);
CREATE TABLE Category_part2 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, date_created_on DATE, article_13_id INT(11));
INSERT INTO Category_part1 (id, created_by) SELECT id, created_by FROM Category;
INSERT INTO Category_part2 (id, date_created_on, article_13_id) SELECT id, date_created_on, article_13_id FROM Category;
DROP TABLE Category;