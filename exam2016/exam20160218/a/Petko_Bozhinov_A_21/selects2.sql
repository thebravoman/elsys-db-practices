SELECT Category.id FROM Category JOIN User
ON Category.id = User.category_id JOIN Tag_part1
ON User.tag_id = Tag_part1.id