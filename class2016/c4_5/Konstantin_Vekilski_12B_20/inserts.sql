USE calendar;

insert into users (name, email, age) values ("kosio","kosio@bg.bg",18);
insert into users (name, email, age) values ("12345","12345@bg.bg",12);
insert into users (name, email, age) values ("blaaa","blaaa@bg.bg",18);
insert into users (name, email, age) values ("qwert","qwert@bg.bg",2);
insert into users (name, email, age) values ("asdfg","asdfg@bg.bg",111);

insert into Groups (name, date_founded_on) values ("kosio_group","2016-12-12");
insert into Groups (name, date_founded_on) values ("12345_group","2006-01-22");


insert into Events (name, date, location) values ("party","2016-12-12", "here");
insert into Events (name, date, location) values ("party_2","2016-12-12", "tues");

insert into user_group (user_id, group_id) values (1, 1);
insert into user_group (user_id, group_id) values (1, 2);
insert into user_group (user_id, group_id) values (5, 1);
insert into user_group (user_id, group_id) values (3, 2);
insert into user_group (user_id, group_id) values (2, 2);


insert into group_events (group_id, event_id) values (1, 1);
insert into group_events (group_id, event_id) values (2, 1);
insert into group_events (group_id, event_id) values (2, 2);
