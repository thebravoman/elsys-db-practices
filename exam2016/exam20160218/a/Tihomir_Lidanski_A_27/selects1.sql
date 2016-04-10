
SELECT User.id FROM User 
JOIN User_Category ON User_Category.user_id = User.id 
JOIN Tag_Category ON Tag_Category.category_id = User_Category.category_id 

JOIN Article_26 ON Article_26.id = User.article_26_id
WHERE Tag_Category.id = 1;
