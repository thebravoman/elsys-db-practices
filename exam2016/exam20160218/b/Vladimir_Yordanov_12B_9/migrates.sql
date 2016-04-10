CREATE TABLE Category_part1 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, date_created_on DATE);
CREATE TABLE Category_part2 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, created_by VARCHAR(255));
INSERT INTO Category_part1 (id, date_created_on) SELECT id, date_created_on FROM Category;
INSERT INTO Category_part2 (id, created_by) SELECT created_by FROM Category;
DROP TABLE Category;
