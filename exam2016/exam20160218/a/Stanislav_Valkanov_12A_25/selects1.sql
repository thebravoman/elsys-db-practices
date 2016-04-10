SELECT DISTINCT User.id FROM User, Category, Article_25, User_Tag 
WHERE Article_25.id = 2 AND Category.article_id = Article_25.id AND User.category_id = Category.id;