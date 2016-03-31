CREATE TABLE Article_0(Article_0_ID int primary key not null auto_increment, password varchar(255), created_on date, name varchar(255));
CREATE TABLE Category (Category_ID int primary key not null auto_increment, created_by varchar(255), priority double);
CREATE TABLE User(User_ID int primary key not null auto_increment, description longtext, created_on date, picture_url varchar(255));
CREATE TABLE Tag (Tag_ID int primary key not null auto_increment, description varchar(255),hash varchar(16));

ALTER TABLE User ADD Category_ID INT;
ALTER TABLE User ADD FOREIGN KEY(Category_ID) REFERENCES Category(Category_ID);
ALTER TABLE Tag ADD User_ID INT;
ALTER TABLE Tag ADD FOREIGN KEY(User_ID) REFERENCES User(User_ID);
ALTER TABLE Tag ADD Article_0_ID INT;
ALTER TABLE Tag ADD FOREIGN KEY(Article_0_ID) REFERENCES Article_0(Article_0_ID);