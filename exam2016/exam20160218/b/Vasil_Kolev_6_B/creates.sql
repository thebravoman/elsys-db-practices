CREATE TABLE Article_5(
id UNSIGNED INT AUTO INCREMET NOT NULL,
description LONGTEXT,
published_on DATE,
url TEXT,
PRIMARY KEY(id)
);

CREATE TABLE Category(
id UNSIGNED INT AUTO INCREMET NOT NULL,
description LONGTEXT,
date_created_on DATE,
PRIMARY KEY(id)
);

CREATE TABLE User(
id UNSIGNED INT AUTO INCREMET NOT NULL,
income FLOAT,
twitter VARCHAR(25),
password VARCHAR(16),
PRIMARY KEY(id)
);

CREATE TABLE Tag(
id UNSIGNED INT AUTO INCREMET NOT NULL,
name VARCHAR(16),
priority INT,
PRIMARY KEY(id)
);



CREATE TABLE ArticleTag(
article INT,
tag INT,
FOREIGN KEY (article) REFERENCES (Article_5.id),
FOREIGN KEY (tag) REFERENCES (Tag.id)
);

CREATE TABLE ArticleUser(
article INT,
user INT,
FOREIGN KEY (article) REFERENCES (Article_5.id),
FOREIGN KEY (user) REFERENCES (User.id)
);

CREATE TABLE UserCategory(
user INT,
category INT,
FOREIGN KEY (user) REFERENCES (User.id),
FOREIGN KEY (category) REFERENCES (Category.id)
);
