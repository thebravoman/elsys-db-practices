INSERT INTO `exam`.`category` (`id`, `priority`,`created_by`,`article_10_id`) VALUES ('1', '1','nqkoi','1');
INSERT INTO `exam`.`category` (`id`, `priority`,`created_by`,`article_10_id`) VALUES ('2', '2','random','1');

INSERT INTO `exam`.`user` (`id`, `income`, `password`, `picture_url`) VALUES ('1', '123', '123213', 'www.t');
INSERT INTO `exam`.`user` (`id`, `income`, `password, `picture_url`) VALUES ('2', '321', '21312321', 'www.t');

INSERT INTO `exam`.`article_10` (`id`, `published_on`, `visible`, `password`) VALUES ('1', '2014-10-10', 1, 'silnaparola');
INSERT INTO `exam`.`article_10` (`id`, `published_on`, `visible`, `password`) VALUES ('2', '2014-10-10', 1, 'silnaasdparola');

INSERT INTO `exam`.`tag_user` (`id`, `Tag_id`, `Article_10_id`) VALUES ('1', '1', '2');
INSERT INTO `exam`.`tag_user` (`id`, `Tag_id`, `Article_10_id`) VALUES ('2', '2', '1');

INSERT INTO `exam`.`tag` (`id`, `name`, `discription`, `article_10_id`) VALUES ('1', 'john', 'adsa','1');
INSERT INTO `exam`.`tag` (`id`, `name`, `discription`,`article_10_id`) VALUES ('2', 'max', 'asda','2');