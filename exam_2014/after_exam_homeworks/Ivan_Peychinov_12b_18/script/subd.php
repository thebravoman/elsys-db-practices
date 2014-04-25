<?php

$request_text = $_POST["request"];
$request = json_decode($request_text, true);
$db = new mysqli("localhost", "root", "", "subd");

switch($request['id']) {
	//create table
	case 1 :
			$db->query(sprintf("CREATE TABLE %s (id int PRIMARY KEY, %s)", $request['table'], $request['columns']));
			break;
			
	//one to many
	case 2 : 
			$columnName = $request['first'] . "_id";
			$db->query(sprintf("ALTER TABLE %s ADD COLUMN %s INT UNSIGNED NOT NULL", $request['second'], $columnName));
			break;
			
	//one to one
	case 3 : 			
			$db->query(sprintf("ALTER TABLE %s ADD FOREIGN KEY (id) REFERENCES %s(id)", $request['first'], $request['second']));
			break;
			
	//many to many
	case 4 :
			$dbname = $request['first'] . "_" . $request['second'];
			$firstID = $request['first'] . "_id";
			$secondID = $request['second'] . "_id";
			$db->query(sprintf("CREATE TABLE %s (id int PRIMARY KEY, %s int, %s int)", $dbname, $firstID, $secondID));
			break;
			
	//split migrate		
	case 5 :
			$db->query(sprintf("create table %s_part1(id int, password varchar(1000))", $request['table']));
			$db->query(sprintf("create table %s_part2(id int, created_on date, picture_url varchar(100))", $request['table']));

			$result = $db->query("select * from " . $request['table']);

			while($row = $result->fetch_assoc()) {
				$db->query(sprintf("insert into %s_part1 values(%d, '%s')", $request['table'], $row["id"], $row["password"]));
				$db->query(sprintf("insert into %s_part2 values(%d, '%s', '%s')", $request['table'], $row["id"], $row["created_on"],$row["picture_url"]));
			}

			$db->query("drop table " . $request['table']);
			break;
			
	//combine migrate		
	case 6 :
			$db->query(sprintf("create table %s(id int, date_created_on date, name varchar(30), user_id int)", $request['table']));

			$table1 = $request['table'] . "_part1";
			$table2 = $request['table'] . "_part2";

			$query = "select * from 1 right join 2 on 1.id = 2.id";
			$query = str_replace("1", $table1, $query);
			$query = str_replace("2", $table2, $query);

			$db->query($query);
								
			while($row = $db->fetch()) {
				$db->query(sprintf("insert into %s values(%d, '%s', '%s', %d)", $request['table'], $row["id"], $row["date_created_on"], $row["name"], $row["user_id"]));
			}

			$db->query("drop table " . $table1);
			$db->query("drop table " . $table2);
}