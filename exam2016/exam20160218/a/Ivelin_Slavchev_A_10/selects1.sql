select category.id, category.date_created_on from category join users
	on users.category_id = category.id join article_9
	on users.article_id = article_9.id
	where article_9.id = 1;