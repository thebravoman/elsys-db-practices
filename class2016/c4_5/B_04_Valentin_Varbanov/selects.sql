SELECT Users_.name, Groups_.name 
FROM Users_ 
INNER JOIN Groups_Users_ 
  ON Users_.id = Groups_Users_.user_id 
INNER JOIN Groups_ 
  ON Groups_.id = Groups_Users_.group_id;

