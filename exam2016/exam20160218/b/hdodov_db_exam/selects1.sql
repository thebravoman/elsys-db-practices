/*
4. Answer the following question
Which are the Tag(s) for a given Article_28
As a result SQL query must be created
Write the queries from points 4 in a file called selects1.sql
*/

SELECT Tag.id FROM Tag JOIN User
ON Tag.id = User.tag_id JOIN Article_28
WHERE Article_28.id = 1;
