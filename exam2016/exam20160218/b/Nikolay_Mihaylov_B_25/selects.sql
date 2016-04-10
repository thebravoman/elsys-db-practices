#4. Answer the following question
#Which are the Article_24(s) for a given Category
#As a result SQL query must be created
#Write the queries from points 4 in a file called selects1.sql

USE exam;

SELECT Article_24.id FROM Article_24 
JOIN User
ON Article_24.user_id = User.id
JOIN Category
ON user_id = User.id
WHERE Category.id = 1;
