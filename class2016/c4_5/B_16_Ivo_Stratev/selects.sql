select Users.Name from Users
inner join Groups_Users on Groups_Users.User_id = Users.id
inner join Groups on Groups.id = Groups_Users.Group_id
where Groups.name = "Pesho";