SELECT DISTINCT Article_10.ArticleID
FROM Article_10
INNER JOIN Category ON Category.CategoryID = Article_10.ArticleID
INNER JOIN User_Category ON User_Category.UserID = Category.CategoryID
INNER JOIN User_part2 ON User_part2.UserID = User_Category.UserID
WHERE User_part2.UserID = 1;
