select * from Category,article_19,category,category_user
where user.id = category_user.user_id
and category_user.category_id = category.id
and category.id = article_19.category_id;
