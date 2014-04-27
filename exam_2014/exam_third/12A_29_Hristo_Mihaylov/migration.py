#!/usr/bin/env python

import MySQLdb
import sys

sys.dont_write_bytecode = True # don't cluster source folder
# create an export

# write your own migration
db = MySQLdb.connect(unix_socket='/home/ico/Programs/mysql/socket', user="root", passwd="mono", db="exam_database")
db.autocommit(False)
cur = db.cursor()

try:
    cur.execute("CREATE TABLE IF NOT EXISTS Article_part1 (created_on DATE NOT NULL);")
    cur.execute("INSERT INTO Article_part1 SELECT Article.created_on FROM Article;")
except MySQLdb.Error,e:
    db.rollback()
    print e
    cur.close()
    db.close()
    
try:
    cur.execute("CREATE TABLE IF NOT EXISTS Article_part2 (price DECIMAL(15, 5) NOT NULL, published_on DATE NOT NULL, many_tag_id INT NOT NULL, article_id INT NOT NULL PRIMARY KEY UNIQUE);");
    cur.execute("INSERT INTO Article_part2 SELECT Article.price, Article.published_on, Article.many_tag_id, Article.article_id FROM Article;")
except MySQLdb.Error,e:
    db.rollback()
    print e
    cur.close()
    db.close()
db.commit()
db.close()
# done !
