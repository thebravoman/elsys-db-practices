insert into Users (Name, Email, Age) values("Pesho", "pesho@gmail.com", "2015-05-12");
insert into Users (Name, Email, Age) values("Gosho", "gosho@gmail.com", "2014-06-11");
insert into Users (Name, Email, Age) values("Sasho", "sasho@gmail.com", "2013-07-10");
insert into Users (Name, Email, Age) values("Tosho", "tosho@gmail.com", "2016-04-13");

insert into Groups (Name, Date_Founded_on) values("Pesho", "2015-05-12");
insert into Groups (Name, Date_Founded_on) values("Gosho", "2014-06-11");
insert into Groups (Name, Date_Founded_on) values("Sasho", "2013-07-10");
insert into Groups (Name, Date_Founded_on) values("Tosho", "2016-04-13");

insert into Events (Date_, Name, Location) values("2015-05-12", "Pesho", "Sofia");
insert into Events (Date_, Name, Location) values("2014-08-20", "Gosho", "Varna");
insert into Events (Date_, Name, Location) values("2013-05-21", "Tosho", "Sofia");
insert into Events (Date_, Name, Location) values("2012-02-25", "Sasho", "Plovdiv");

insert into Groups_Users (User_id, Group_id) values(1, 2);
insert into Groups_Users (User_id, Group_id) values(2, 2);
insert into Groups_Users (User_id, Group_id) values(2, 1);
insert into Groups_Users (User_id, Group_id) values(1, 3);

insert into Events_Groups (Event_id, Group_id) values(1, 2);
insert into Events_Groups (Event_id, Group_id) values(2, 2);
insert into Events_Groups (Event_id, Group_id) values(2, 1);
insert into Events_Groups (Event_id, Group_id) values(1, 3);