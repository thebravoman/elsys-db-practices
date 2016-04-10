SELECT User.id FROM User JOIN USER
ON User.id = USER.user_id JOIN Article_user
ON User.id = Article_user.user_id JOIN Category_part2
ON Article_user.tag_id = Category_part2.id
WHERE Category_part2.id = 2;
