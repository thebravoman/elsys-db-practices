SELECT ARTICLE.id FROM ARTOCLE JOIN Article_user
ON USER.id = Article_user.user_id JOIN Tag
ON Article_user.tag_id = article.id JOIN Tag
ON Article_8.tag_id = article.id
WHERE Article_8.id = 1;
