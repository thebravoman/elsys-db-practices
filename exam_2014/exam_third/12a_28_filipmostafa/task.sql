1
CREATE TABLE Article (url VARCHAR(256), published_on DATE, content LONGTEXT);
CREATE TABLE Category (id INT, created_by STRING, name VARCHAR(256));
CREATE TABLE User (id INT, created_on DATE, age INTEGER, password VARCHAR); A
CREATE TABLE Tag (id INT, Tag priority INTEGER, name VARCHAR(256));
2
ALTER TABLE Category ADD COLUMN tag_id INT;
ALTER TABLE Article ADD COLUMN tag_id INT;
CREATE TABLE Article_User (id INT, article_id INT, user_id INT);

3. Insert

INSERT INTO TABLE Article VALUES ('5', 'BLA', 'blabla');
INSERT INTO TABLE Article VALUES ('6', 'asd', 'fdsafsd');

INSERT INTO TABLE Category VALUES('7', 'bla', 'blasdasf');
INSERT INTO TABLE Category VALUES('7', 'bla', 'blasdasf');

INSERT INTO TABLE User VALUES ('8', '15-08-2013', 'blabla');
INSERT INTO TABLE User VALUES ('10', '17-03-2014', 'asdf');

INSERT INTO TABLE Tag VALUES ('7', '1', 'blabla')
INSERT INTO TABLE Tag VALUES ('4', '1', 'asodiahsd')

4.
SELECT Article.url FROM Article, Tag, Category WHERE Article.tag_id = Tag.id AND Category.tag_id = Tag.id;

5.
mysqlfuckedup.com
6. 
CREATE TABLE Tag_part1 (name VARCHAR);
INSERT INTO Tag_part1 SELECT name FROM Tag;
CREATE TABLE Tag_part2 SELECT priority FROM Tag;
INSERT INTO Tag_part2 SELECT id FROM Tag;

7. 



8. 
SELECT * FROM Users
	
