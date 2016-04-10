CREATE TABLE Article_19 (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    created_on DATETIME,
    price DOUBLE
);
 
CREATE TABLE Category (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    description TEXT,
    date_created_on VARCHAR(255)
);
 
CREATE TABLE User (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    gender VARCHAR(255),
    created_on DATETIME,
    twitter VARCHAR(255)
);
 
CREATE TABLE Tag (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    description VARCHAR(255),
    priority VARCHAR(255)
);
 
CREATE TABLE Tag_Category(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, tag_id INT(11), category_id INT(11));
CREATE TABLE Category_User(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, category_id INT(11), user_id INT(11));
CREATE TABLE User_Article_19(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, user_id INT(11), article_19_id INT(11));
