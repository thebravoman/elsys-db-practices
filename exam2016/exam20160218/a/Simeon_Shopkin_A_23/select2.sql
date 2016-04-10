/*
8. Answer the following question
Which are the User(s) for a given Tag
As a result SQL query must be created
*/

SELECT User.id FROM User 
LEFT JOIN Category_User ON User.id = Category_User.user_id 
LEFT JOIN Category ON Category.id = Category_User.category_id 
LEFT JOIN Tag_part1 ON Tag_part1.id = Category.tag_id 
WHERE Tag_part1.id = 1;
