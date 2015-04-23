CREATE TABLE `exam`.`article_10` (
  `id` INT NOT NULL,
  `password` TEXT NULL,
  `published_on` DATE NULL,
  `visible` BOOLEAN NULL,
  PRIMARY KEY (`id`));

  CREATE TABLE `exam`.`category` (
  `id` INT NOT NULL,
  `priority` DOUBLE NULL,
  `created_by` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `exam`.`user` (
  `id` INT NOT NULL,
  `income` FLOAT NULL,
  `picture_url` TEXT NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `exam`.`tag` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
 
 create table Tag_user(
	id int,
	PRIMARY KEY (id),
	Tag_id int, FOREIGN KEY (Tag_id) REFERENCES Tag(id),
	user_id int, FOREIGN KEY (user_id) REFERENCES user(id)
);

alter table tag add column article_10_id int;
alter table tag add FOREIGN KEY (article_10_id) REFERENCES article_10(id);


alter table category add column article_10_id int;
alter table category add FOREIGN KEY (article_10_id) REFERENCES article_10(id);
