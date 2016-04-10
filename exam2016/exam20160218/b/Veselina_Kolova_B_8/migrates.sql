/*
6. Execute the following migration
Separate Article_7 on two tables
Article_7_part1 containing url
Article_7_part2 containing all the other fields
As a result SQL queries+code in other programming language must be create.
*/

CREATE TABLE Article_7_part1 (
	url VARCHAR(255)
)

CREATE TABLE Article_7_part_2 (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	password VARCHAR(255),
	visible TINYINT(1)
);

INSERT INTO Article_7_part1 (url) SELECT url FROM Article_7;
INSERT INTO Article_7_part2 (id, password, visible) SELECT id, password, visible FROM Article_7;
DROP TABLE Article_7;
