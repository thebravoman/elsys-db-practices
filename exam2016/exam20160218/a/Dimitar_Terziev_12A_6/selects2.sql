/*8. Answer the following question
Which are the User(s) for a given Category
As a result SQL query must be created
Write the queries from points 8 in a file called selects2.sql*/

select * from Category_part2, Article_4, User where
	User.id=1
	and user_id=User.id
	and article_4_id=Article_4.id
;