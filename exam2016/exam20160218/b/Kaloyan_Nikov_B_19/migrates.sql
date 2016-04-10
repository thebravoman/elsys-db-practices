CREATE TABLE Category_part1(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,created_by VARCHAR(255));
CREATE TABLE Category_part2(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,description TEXT);
INSERT INTO Category_part1(id,created_by) SELECT id,created_by FROM Category;
INSERT INTO Category_part2(id,description) SELECT id,description FROM Category;
