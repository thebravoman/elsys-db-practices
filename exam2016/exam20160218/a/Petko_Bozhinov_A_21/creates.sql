CREATE TABLE Article_20 (
	id int(5) PRIMARY KEY not null AUTO_INCREMENT,
    url varchar(64),
    name varchar(64),	 
    created_on datetime
)

Create table Category(
	id int(5) PRIMARY KEY NOT null AUTO_INCREMENT,
    date_created_on datetime,
    name varchar(64)
)

Create table User (
	id int(5) PRIMARY KEY not null AUTO_INCREMENT,
    name varchar(64),
    description longtext,
    age integer(3)
)

Create table Tag (
 	id int(5) PRIMARY KEY not null AUTO_INCREMENT,
    priority int(2),
    second_priority float
) 

ALTER TABLE Article_20 add COLUMN tag_id int(5)
ALTER TABLE User ADD COLUMN tag_id int(5)
ALTER TABLE User ADD COLUMN category_id int(5)