SELECT Users_.name, Groups_.name 
FROM Users_ 
INNER JOIN Groups_Users_ 
  ON Users_.id = Groups_Users_.user_id 
INNER JOIN Groups_ 
  ON Groups_.id = Groups_Users_.group_id;

SELECT Users_.id, Users_.name 
FROM Users_ 
INNER JOIN Groups_Users_ 
	ON Users_.id = Groups_Users_.user_id 
INNER JOIN groups_ 
	ON Groups_.id = Groups_Users.group_id 
INNER JOIN Groups_Events_ 
	ON Groups_.id = Groups_Events_.group_id 
INNER JOIN Events_
	ON Events_.id = Groups_Events_.event_id;
