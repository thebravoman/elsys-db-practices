create table user_part1 (id integer primary key, picture_url varchar(50));
create table user_part2 (id integer primary key, password varchar(50), description varchar(255), article_id integer, category_id integer);
insert into user_part1 (id, picture_url) select id, picture_url from users;
insert into user_part2 (id, password, description, article_id, category_id) select id, password, description, article_id, category_id from users;
drop table users;