CREATE TABLE Tag_part1(
	id int(5) PRIMARY KEY NOT null AUTO_INCREMENT,
    second_priority float
)

CREATE TABLE Tag_part2(
	id int(5) PRIMARY KEY NOT null AUTO_INCREMENT,
    priority int(2)
)

INSERT into Tag_part1(second_priority)
(SELECT second_priority from Tag)

INSERT into Tag_part2(priority)
(SELECT priority from Tag)

drop table Tag