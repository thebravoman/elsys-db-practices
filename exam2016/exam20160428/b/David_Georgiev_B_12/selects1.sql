/*Which are the Article_11(s) for a given User
alter table User add column category_id int unique;
alter table Article_11 add column category_id int;
*/
SELECT id FROM Article_11 WHERE Article_11.id IN (SELECT category_id FROM User WHERE User.id = 1);
