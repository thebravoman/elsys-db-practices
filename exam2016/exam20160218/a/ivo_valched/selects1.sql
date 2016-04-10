SELECT DISTINCT Category.CategoryID
FROM Category
INNER JOIN User_Category on Category.CategoryID = User_Category.CategoryID
INNER JOIN User on User.UserID = User_Category.UserID
INNER JOIN Tag on Tag.TagID = User.UserID
WHERE Tag.TagID = 1;
