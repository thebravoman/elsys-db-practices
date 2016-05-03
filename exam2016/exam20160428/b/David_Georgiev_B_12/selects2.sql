/*Which are the Tag(s) for a given Category
alter table Article_11 add column tag_id int unique;
alter table Article_11 add column category_id int;
alter table User add column category_id int unique;
*/
/*SELECT id FROM Tag WHERE Article_11.id IN (SELECT category_id FROM User WHERE User.id = 1);*/
