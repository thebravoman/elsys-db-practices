Task.txt contains the task.

db1.sql contains the first export.

db2.sql contains the second export.

Execute.me contains all the queries for creating the database up to the first export. Each empty line is the end of the current task (1, 2, 3, etc).

Executeme.two contains the migration and the last select that is task 8.

To execute either of them:
https://dev.mysql.com/doc/refman/5.0/en/mysql-batch-commands.html

How I've done it:
mysql> use <dbname>
mysql> source <filename>