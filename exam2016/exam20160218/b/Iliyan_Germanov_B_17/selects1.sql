#Which are the Tag(s) for a given User
USE exam;

SELECT Tag.id, Tag.hash, Tag.name FROM Tag
JOIN Article_16 ON Article_16.tag_id = Tag.id
JOIN User_Article_16 ON Article_16.id = User_Article_16.article_16_id
JOIN User ON User.id = User_Article_16.user_id
WHERE User.id = 1;
