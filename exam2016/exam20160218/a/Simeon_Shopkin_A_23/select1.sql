/*
4. Answer the following question
Which are the Category(s) for a given Article_22
As a result SQL query must be createdd
*/

SELECT Category.id FROM Category 
LEFT JOIN Tag ON Tag.id = Category.tag_id  
LEFT JOIN Article_22 ON Article_22.id = Tag.id 
WHERE Article_22.id = 2;
