SELECT Article_18.id FROM Article_18
JOIN Category
ON Category.id = Article_18.category_id
JOIN Tag
ON Category.id = Tag.category_id
WHERE Tag.id = 1;
