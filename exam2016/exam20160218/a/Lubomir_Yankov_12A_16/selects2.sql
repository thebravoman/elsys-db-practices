SELECT Article_15.id
	FROM Article_15
		JOIN Category ON Article_15.category_id = Category.id
		JOIN User_part2 ON Category.id = User_part2.category_id
			WHERE User_part2.id = 1