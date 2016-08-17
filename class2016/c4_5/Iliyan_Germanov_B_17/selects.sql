USE calendar;

SELECT Users.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id
INNER JOIN Groups ON Groups_Users.group_id = Groups.id;

SELECT Users.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id
INNER JOIN Groups_Events ON Groups_Users.group_id = Groups_Events.group_id
INNER JOIN Events ON Groups_Events.event_id = Events.id;

SELECT Users.name, Events.name FROM Users 
INNER JOIN Groups_Users ON Users.id = Groups_Users.user_id
INNER JOIN Groups_Events ON Groups_Users.group_id = Groups_Events.group_id
INNER JOIN Event ON Groups_Events.event_id = Events.id
WHERE Events.name = "AMG";

#LEFT JOIN EXAMPLE
SELECT Users.name, Groups.name FROM Users
LEFT JOIN Groups_Users ON User.id = Groups_Users.user_id
LEFT JOIN Groups ON Groups.id = Groups_Users.group_id;

#OUTTER JOIN EXAMPLE
SELECT Users.name, Groups.name FROM Users
LEFT JOIN Groups_Users ON User.id = Groups_Users.user_id
LEFT JOIN Groups ON Groups.id = Groups_Users.group_id
UNION
SELECT Users.name, Groups.name FROM Users
RIGHT JOIN Groups_Users ON User.id = Groups_Users.user_id
RIGHT JOIN Groups ON Groups.id = Groups_Users.group_id;

#All users without groups
SELECT User.name FROM Users
LEFT JOIN Groups_Users ON User.id = Groups_Users.user_id
WHERE Groups_Users.user_id IS NULL;

