CREATE TABLE User_part1 (
	id INT PRIMARY KEY NOT NULL,
	picture_url varchar(50)
);

CREATE TABLE User_part2 (
	id INT PRIMARY KEY NOT NULL,
	password varchar(50),
	created_on date,
	category_id INT
);

INSERT INTO User_part1 (id, picture_url) SELECT id, picture_url FROM User;
INSERT INTO User_part2 (id, password, created_on, category_id) SELECT id, password, created_on, category_id FROM User;

DROP TABLE User;