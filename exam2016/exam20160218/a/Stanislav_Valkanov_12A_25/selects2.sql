SELECT DISTINCT Tag.name FROM Tag, Article_25, User_Tag, Category_part1, Category_part2, User
WHERE Category_part2.id = 2 AND Category_part2.id = User.category_id AND User_Tag.user_id = User.id AND User_Tag.tag_id = Tag.id;
