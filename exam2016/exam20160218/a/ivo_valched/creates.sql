CREATE DATABASE Ivo_Valchev;
USE Ivo_Valchev;

CREATE TABLE Article_10 (ArticleID INT NOT NULL PRIMARY KEY, url TINYTEXT,
  price numeric(15,2), password varchar(30));

CREATE TABLE Category (CategoryID INT NOT NULL PRIMARY KEY,
  priority DOUBLE, date_created_on DATE);

CREATE TABLE User (UserID INT NOT NULL PRIMARY KEY, description LONGTEXT,
  twitter varchar(30), password varchar(30));

CREATE TABLE Tag (TagID INT NOT NULL PRIMARY KEY, name varchar(30), second_priority FLOAT);

ALTER TABLE User
ADD FOREIGN KEY (UserID) REFERENCES Tag(TagID);

ALTER TABLE Category
ADD FOREIGN KEY (CategoryID) REFERENCES Article_10(ArticleID);

CREATE TABLE User_Category(
    UserID INT NOT NULL REFERENCES User(UserID),
    CategoryID INT NOT NULL REFERENCES Category(CategoryID),
    PRIMARY KEY (UserID, CategoryID));
