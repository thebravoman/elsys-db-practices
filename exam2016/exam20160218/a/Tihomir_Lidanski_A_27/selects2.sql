
SELECT Article_26.id FROM Article_26
JOIN User ON User.article_26_id = Article_26.id
JOIN User_Category ON User_Category.user_id = User.id
JOIN Category ON Category.id = User_Category.category_id

WHERE Category.id = 2;
