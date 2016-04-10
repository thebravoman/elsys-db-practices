CREATE TABLE Category_part1 (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, created_by VARCHAR(255));
CREATE TABLE Category_part2 (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, priority DOUBLE, article_id INT);
INSERT INTO Category_part1 (id, created_by) SELECT id, created_by FROM Category;
INSERT INTO Category_part2 (id, priority, article_id) SELECT id, priority, article_id FROM Category;
DROP TABLE Category;