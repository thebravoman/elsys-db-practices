SELECT User.id FROM User JOIN Tag
ON Tag.id = User.tag_id JOIN Article_20 
ON Article_20.tag_id = Tag.id