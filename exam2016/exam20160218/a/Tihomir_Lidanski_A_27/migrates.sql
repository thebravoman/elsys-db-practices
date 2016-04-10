CREATE TABLE Category_part1 (id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, description LONGTEXT);
CREATE TABLE Category_part2 (id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, date_created_on DATE);

INSERT INTO Category_part1 (id, description) SELECT id, description FROM Category;
INSERT INTO Category_part2 (id, date_created_on) SELECT id, date_created_on FROM Category;

DROP TABLE Category;
