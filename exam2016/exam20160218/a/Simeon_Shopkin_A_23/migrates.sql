/*
Separate Tag on two tables
Tag_part1 containing description
Tag_part2 containing all the other fields
*/

CREATE TABLE Tag_part1 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, description TEXT);
CREATE TABLE Tag_part2 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, hash VARCHAR(16));
INSERT INTO Tag_part1 (id, description) SELECT id, description FROM Tag;
INSERT INTO Tag_part2 (id, hash) SELECT id, hash FROM Tag;
DROP TABLE Tag;
