connect 'jdbc:derby:test_db;create=true;';
create table article_9 (id integer primary key, visible boolean, content varchar(255), url varchar(50));
create table category (id integer primary key, date_created_on date, created_by varchar(50));
create table users (id integer primary key, password varchar(50), description varchar(255), picture_url varchar(50));
create table tag (id integer primary key, name varchar(50), hash varchar(16));

alter table users add column article_id integer;
alter table users add column category_id integer;
alter table category add column tag_id integer;
alter table tag add column category_id integer;