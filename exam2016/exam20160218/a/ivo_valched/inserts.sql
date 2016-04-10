INSERT INTO Article_10 (ArticleID, url, price, password)
  VALUES (1, "www.google.bg", 1.25, "mypass"), (2, "abv.bg", 2.25, "yourpass");

INSERT INTO Category (CategoryID, priority, date_created_on)
  VALUES (1, 2.5, CURDATE()), (2, 1.5, CURDATE());

INSERT INTO Tag (TagID, name, second_priority)
  VALUES (1, "Ivo", 2.0), (2, "Petar", 3.5);

INSERT INTO User (UserID, description, twitter, password)
  VALUES (1, "1", "2", "3"), (2, "2", "3", "4");

INSERT INTO User_Category(UserID, CategoryID)
    VALUES (1,1), (1,2);
