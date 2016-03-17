USE calendar;

SELECT * FROM User;
SELECT * FROM Groups;
SELECT * FROM Events;
SELECT * FROM Group_events;
SELECT * FROM User_Group;
SELECT User.name, Groups.name FROM User,Groups;
/*SELECT User.email FROM User,User_Group WHERE COUNT(SELECT * FROM User_Group WHERE User_Group.user_id != User.id)=0;*/
