select * from User join Article_24
on User.article_24_id = Article_24.id join Tag
on Article_24.tag_id = Tag.id
where User.id = 1  