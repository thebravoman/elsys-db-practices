#Which are the Category(s) for a given Article_16
USE exam;

SELECT Category.id, Category.name, Category.date_created_on FROM Category
JOIN Tag ON Category.id = Tag.category_id
JOIN Article_16_part2 ON Article_16_part2.tag_id = Tag.id
WHERE Article_16_part2.id = 1;
