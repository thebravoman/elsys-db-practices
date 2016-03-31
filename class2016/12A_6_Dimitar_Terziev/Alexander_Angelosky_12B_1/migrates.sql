CREATE TABLE User_part1(created_on DATE);
INSERT INTO User_part1 SELECT created_on FROM User;

CREATE TABLE USER_PART2 ( Category_ID INT, FOREIGN KEY(Category_ID) REFERENCES Category(Category_ID), User_ID int, FOREIGN KEY(User_ID) REFERENCES User(User_ID) primary key not null auto_increment, description longtext, picture_url varchar(255));
INSERT INTO  SELECT Category_ID , User_ID , description , picture_url   FROM User;