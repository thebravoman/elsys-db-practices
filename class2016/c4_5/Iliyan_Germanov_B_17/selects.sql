USE calendar;

SELECT Users.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id;

SELECT Users.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id
INNER JOIN Groups_Events ON Groups_Users.group_id = Groups_Events.group_id;

SELECT Users.name, Events.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id
INNER JOIN Groups_Events ON Groups_Users.group_id = Groups_Events.group_id
INNER JOIN Event ON Groups_Events.event_id = Events.id
WHERE Events.name = "AMG";

