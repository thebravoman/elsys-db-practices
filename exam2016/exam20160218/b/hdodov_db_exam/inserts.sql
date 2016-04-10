/*
3. Insert
Add at least two records in each table
As a result SQL queries must be created
Write the queries from point 3 in a file called inserts.sql
*/

INSERT INTO Article_28 (created_on, price, content) VALUES
("2015-04-03 05:08:07", "20 dollars", "the text"),
("2015-04-03 05:08:07", "30 dollars", "the other text");

INSERT INTO Category (created_by, description) VALUES
("Hristiyan", "the description"),
("Dodov", "the other description");

INSERT INTO User (twitter, gender, picture_url) VALUES
("h.dodov", "male", "http://theurl.com"),
("f.dodov", "female", "http://theotherurl.com");

INSERT INTO Tag (name, description) VALUES
("Hristiyan", "the tag description"),
("Dodov", "the other tag description");

INSERT INTO Tag_Category (tag_id, category_id) VALUES
(1, 2),
(2, 1);
