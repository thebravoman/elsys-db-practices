SELECT User.id FROM User
JOIN Article_18
ON User.article_18_id = Article_18.id
JOIN Category_part2
ON Category_part2.id = Article_18.category_id
WHERE Category_part2.id = 2;
