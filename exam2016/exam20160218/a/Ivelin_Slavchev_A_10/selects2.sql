select tag.id, tag.name from tag join category
	on tag.category_id = category.id join user_part2
	on category.id = user_part2.category_id
	where user_part2.id = 1;