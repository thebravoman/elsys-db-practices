Separate Tag on two tables
Tag_part1 containing description
Tag_part2 containing all the other fields
As a result SQL queries+code in other programming language must be create

CREATE TABLE Tag(id int, priority int, description varchar(50), primary key(id))

<?php
$table_name = "Tag";
$db = new mysqli("localhost", "root", "", "exam");

$db->query(sprintf("create table %s_part1(id int primary key, description varchar(50))", $table_name));
$db->query(sprintf("create table %s_part2(id int primary key, priority int)", $table_name));

$result = $db->query("select * from " . $table_name);

while($row = $result->fetch_assoc()) {
	$db->query(sprintf("insert into %s_part1 values(%d, '%s')", $table_name, $row["id"], $row["description"]));
	$db->query(sprintf("insert into %s_part2 values(%d, %d)", $table_name, $row["id"], $row["priority"]));
}

$db->query("drop table " . $table_name);
$db->close();