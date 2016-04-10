SELECT Category.id
	FROM Category
		JOIN User ON Category.id = User.category_id
		JOIN Tag_User ON User.id = Tag_User.user_id
		JOIN Tag ON Tag_User.tag_id = Tag.id
			WHERE Tag.id = 1