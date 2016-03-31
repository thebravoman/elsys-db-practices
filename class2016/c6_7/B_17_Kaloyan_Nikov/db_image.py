#!/usr/bin/env python
# -*- coding: utf-8 -*-

import ConfigParser
from sqlalchemy import MetaData
from sqlalchemy_schemadisplay import create_schema_graph

config = ConfigParser.RawConfigParser()
##Replace testEnvironment with the name of you database
config.read('/etc/testEnvironment/testEnvironment.conf')


##Write password of your linux account between root: and @127...
##Replace testEnvironment with the name of your database
connection = "mysql://root:password@127.0.0.1/testEnvironment?charset=utf8"

##Generate graph of connected database
graph = create_schema_graph(metadata=MetaData(connection),
                 show_datatypes=False,
                 show_indexes=False,
                 rankdir='LR',
                 concentrate=False)

##Generate png image                
graph.write_png('db_schema.png')
print "Database Scheme Ready"
