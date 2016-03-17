insert into users(name, email, age) values
("Pesho", "pe6kata@mail.com", 18),
("Gosho", "gergi@abv.bg", 24),
("Radozlav", "razo@abeve.bg", 19),
("Bolvar", "bover@gmail.com", 42),
("Tirion", "tir@gmail.com", 39);

insert into groups(name, date_founded_on) values
("AZTUES", "2016-03-17 08:50:32"),
("Lucifer group", "2006-06-06 06:06:06"),
("The Group", "2014-02-06 12:24:24"),
("Alliance", "2004-01-04 09:30:00");

insert into events(name, date_of_event, location) values
("Gymkhana", "2016-07-03 14:00:00", "Pernik"),
("ANDY C", "2016-11-23 23:00:00", "Yalta"),
("Battle of the Year", "2016-05-02 19:00:00", "Thessaloniki"),
("Gaming", "2016-01-01 03:00:00", "Yalta");

insert into groups_users(groups_id, users_id) values
(1, 1), (1, 2), (1, 3),
(3, 1),
(4, 4), (4, 5);

insert into groups_events(groups_id, events_id) values
(1, 1), (1, 2),
(2, 4),
(3, 1), (3, 2);
