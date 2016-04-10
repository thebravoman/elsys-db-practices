#Separate Article_16 on two tables
#Article_16_part1 containing password
#Article_16_part2 containing all the other fields
USE exam;

CREATE TABLE Article_16_part1 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	password VARCHAR(255)
);

INSERT INTO Article_16_part1 (password) SELECT password FROM Article_16;

ALTER TABLE Article_16 DROP COLUMN password;
ALTER TABLE Article_16 RENAME Article_16_part2;
