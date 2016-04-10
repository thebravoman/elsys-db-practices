/*4. Answer the following question
Which are the Article_4(s) for a given Tag
As a result SQL query must be created
Write the queries from points 4 in a file called selects1.sql*/

select * from Article_4, Category, Tag where
	Tag.id=1
	and Article_4.id=article_4_id
	and tag_id=Tag.id
; 