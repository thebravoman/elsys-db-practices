select distinct Users.Name from Users
inner join Groups_Users on Groups_Users.User_id = Users.id
inner join Groups on Groups.id = Groups_Users.Group_id
inner join Events_Groups on Events_Groups.Group_id = Groups_Users.Group_id
inner join Events on Events.id = Events_Groups.Event_id;

select Users.Name, Groups.Name from Users
left join Groups_Users on Groups_Users.User_id = Users.id
left join Groups on Groups.id = Groups_Users.Group_id;

select Users.Name, Groups.Name from Users
right join Groups_Users on Groups_Users.User_id = Users.id
right join Groups on Groups.id = Groups_Users.Group_id;

select Users.Name, Groups.Name from Users
left join Groups_Users on Groups_Users.User_id = Users.id
left join Groups on Groups.id = Groups_Users.Group_id
union 
select Users.Name, Groups.Name from Users
right join Groups_Users on Groups_Users.User_id = Users.id
right join Groups on Groups.id = Groups_Users.Group_id;

select Users.Name, Groups.Name from Users
left join Groups_Users on Groups_Users.User_id = Users.id
left join Groups on Groups.id = Groups_Users.Group_id
where Groups.Name is NULL;
