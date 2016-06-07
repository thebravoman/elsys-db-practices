INSERT INTO users ( name, email, age ) VALUES ('Gosho', 'gosho@abv.bg', 2);
INSERT INTO groups (name) VALUES ('bigRedBadasses');
INSERT INTO events (name, location) VALUES ('Gosho\'s Birthday', 'Sessame street no 33');
INSERT INTO events (name, location) VALUES ('Gosho\'s Freeday', 'Sessame street no 11');

INSERT INTO groupEvents (refGroup, refEvent) VALUES (0,0);
INSERT INTO userGroup (refUser, refGroup) VALUES (0,0);
