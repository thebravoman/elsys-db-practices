SELECT User.id FROM User JOIN Tag_User
ON USER.id = Tag_User.user_id JOIN Tag
ON Tag_User.tag_id = Tag.id JOIN Tag
ON Tag.tag_id = User.id
WHERE Tag.id = 1;
