Create table User_part1 (UserID INT NOT NULL PRIMARY KEY, description LONGTEXT);
INSERT INTO User_part1 (UserID, description)
SELECT UserID, description
FROM User;

ALTER TABLE User drop column description;
RENAME TABLE User to User_part2;
