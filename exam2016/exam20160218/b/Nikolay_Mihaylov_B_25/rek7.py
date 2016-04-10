import MySQLdb
import sys
import os
import ast
import random

#depencies:
#sudo apt-get install mysql-server
#sudo apt-get install python-mysqldb
#setup:
#MYSQL_PASSWORD = "xxxxxxxxxx" - your mysqldb root user password
#DIR_NAME = "Iliyan_Germanov_B_17/" - the dir containing exam result !NOTE:must end on '/'
#how to use:
#python rek7.py exam.txt 
#!NOTE: make sure "1. Create the following tables" is on the first line of the file!!

MYSQL_USERNAME = "root"
MYSQL_PASSWORD = "112358"
DATABASE_NAME = 'exam'

DIR_NAME = "Iliyan_Germanov_B_17/"

TASK_1_TARGET_ROWS = (1, 4, 7, 10)
TASK_1_FILE_NAME = "creates.sql"

TASK_2_TARGET_ROW = 16

TASK_3_FILE_NAME = "inserts.sql"

TASK_5_FILE_NAME = "database1.sql"

RECORDS_TO_INSERT = 5

def show_error_message_and_exit(message):
	print message
	sys.exit(-1)
	return

try:
	db_conn = MySQLdb.connect(host="localhost", user=MYSQL_USERNAME ,passwd=MYSQL_PASSWORD)
	db_conn.autocommit = True
	cursor = db_conn.cursor()
except: 
	show_error_message_and_exit("Fatal error: Cannot connect to MYSQL, check your username and password!")

class Database:
	def __init__(self, name, tables = None, connections = None):
		self.name = name	
		self.tables = tables or []
		self.connections = connections or []

	def add_table(self, table):
		self.tables.append(table)

	def get_table(self, table_name):
		for table in self.tables:
			if table.table_name == table_name:
				return table
		print "Fatal error: table %s not found in database!" % table_name
		return None

	def add_connection(self, connection):
		self.connections.append(connection)

	def display(self):
		for table in self.tables:
			table.display()

	def get_insert_records_query(self, database_cursor):
		query = ""

		tables_copy = list(self.tables)

		my_dependencies = {}

		for conn in self.connections:
			for table_key, dependencies in conn.get_dependency_tables().iteritems():
				try:
					tables_copy.remove(table_key)
				except ValueError:
					pass
				if not table_key in my_dependencies:
					my_dependencies[table_key] = []
				try:
					for table in dependencies:
						my_dependencies[table_key].append(table)
				except TypeError:
					my_dependencies[table_key].append(dependencies)	

		previous_insert_table_len = -1
		force_break = False
		while len(tables_copy) < len(self.tables):
			print "Task 3: Looping dependencies for insert order: progress %d/%d" % (len(tables_copy), len(self.tables))
			if previous_insert_table_len == len(tables_copy):
				print "Task 3: Force breaking"
				force_break = True
				break
			previous_insert_table_len = len(tables_copy)
			for key, value in my_dependencies.iteritems():
				if key in tables_copy:
					break
				is_ok = True;
				for table in value:
					if table not in tables_copy:
						is_ok = False
						break
				if is_ok:
					tables_copy.append(key)

	
		if force_break:
			print "Task 3: Trying to resolving force breaking missing tables"
			for table in self.tables:
				if table not in tables_copy:
					tables_copy.append(table)
			if len(tables_copy) == len(self.tables):
				print "Task	3: Missing tables resovled succesfully!"
			else:
				print "Task 3: failed to resolve missing tables."
				print "Task 3: data inserted in tables:"
				for table in tables_copy:
					print table.table_name
				print "---------------------------------------"

		print "Task 3: Insert order table list created."

		database_cursor.close()
		for table in tables_copy:
			insert_query = table.get_insert_records_query()
			database_cursor = db_conn.cursor()
			database_cursor.execute(insert_query)
			database_cursor.close()
			query += "\n#Inserting into table %s" % table.table_name			
			query += "\n" + insert_query
		database_cursor = db_conn.cursor()			

		return query

class Connection:
	def __init__(self, first_table, connection_type, second_table):
		self.first_table = first_table
		self.connection_type = connection_type
		self.second_table = second_table

	def get_sql_query(self, database):
		query = ""
		if self.connection_type == "one to one":
			return self.create_one_to_one()
		elif self.connection_type == "one to many":
			return self.create_one_to_many()
		elif self.connection_type == "many to one":
			return self.create_many_to_one()
		elif self.connection_type == "many to many":
			return self.create_many_to_many(database)
		else:
			print "Unknown connection type - %s!" % self.connection_type

	def get_connect_column_name(self, table_name):
		connect_column_name = table_name.lower()
		if connect_column_name[-1] != "_":
			connect_column_name += "_id"
		else: 	
			connect_column_name += "id"
		return connect_column_name

	def get_add_column_as_foreign_key_query(self, is_unique, table_to_alter, table_to_connect):
		connect_column_name = self.get_connect_column_name(table_to_connect.table_name)
		
		#add column		
		query = "ALTER TABLE %s ADD COLUMN %s INT" % (table_to_alter.table_name, connect_column_name)
		if is_unique:
			query += " UNIQUE"
		query += ";\n"

		table_to_alter.add_column(Column(connect_column_name, "int", True))
		
		#make it foreign key
		query += "ALTER TABLE %s ADD CONSTRAINT FOREIGN KEY (%s) REFERENCES %s(id);" % (table_to_alter.table_name, connect_column_name, table_to_connect.table_name)
		return query
		

	def create_one_to_one(self):
		return self.get_add_column_as_foreign_key_query(True, self.first_table, self.second_table)

	def create_one_to_many(self):
		return self.get_add_column_as_foreign_key_query(False, self.second_table, self.first_table)


	def create_many_to_one(self):
		return self.get_add_column_as_foreign_key_query(False, self.first_table, self.second_table)

	def create_many_to_many(self, database):
		first_connect_column = self.get_connect_column_name(self.first_table.table_name);
		second_connect_column = self.get_connect_column_name(self.second_table.table_name);

		table = Table(self.first_table.table_name + "_" + self.second_table.table_name, is_connection_table = True)

		table.add_column(Column(first_connect_column, "int not null", True))
		table.add_column(Column(second_connect_column, "int not null", True))
		self.many_to_many_table = table
		database.add_table(table)		
		
		return table.as_sql_create_query(ast.literal_eval("{'%s' : '%s', '%s' : '%s'}" % (first_connect_column, self.first_table.table_name, second_connect_column, self.second_table.table_name)))

	def as_string(self):
		return "#%s has a %s connection to %s\n" % (self.first_table.table_name, self.connection_type, self.second_table.table_name)

	def get_dependency_tables(self):
		if self.connection_type == "one to one":
			return {self.first_table : self.second_table}
		elif self.connection_type == "one to many":
			return {self.second_table : self.first_table}
		elif self.connection_type == "many to one":
			return {self.first_table : self.second_table}
		elif self.connection_type == "many to many":
			return {self.many_to_many_table : [self.first_table, self.second_table]}
		else:
			print "Unknown connection type - %s!" % self.connection_type
					

class Table:
	def __init__(self, table_name, columns = None, is_connection_table = False):
		self.table_name = table_name
		self.columns = columns or []
		self.columns.append(Column("id", "id"))	
		self.is_connection_table = is_connection_table

	def add_column(self, column):
		self.columns.append(column)

	def display(self):
		print "Table %s (" % self.table_name
		for column in self.columns:
			column.display()
		print ")"

	def as_sql_create_query(self, foreign_keys = None):
		query = "CREATE TABLE %s (\n" % self.table_name

		first_iteration = True
		for column in self.columns:
			if first_iteration:
				#its first iteration don't add comma
				first_iteration = False
			else:
				#not first iteration add comma
				query += ",\n"
			query += "\t" + column.as_sql()

		if foreign_keys:
			for column_name, reference_table_name in foreign_keys.iteritems():
				query += ",\n\tFOREIGN KEY (%s) REFERENCES %s(id)" % (column_name, reference_table_name)

		query += "\n);"
		return query

	def get_insert_records_query(self):
		query = "INSERT INTO %s\n\t(" % self.table_name
		first_iter = True
		for column in self.columns:
			if column.column_name == "id":
				continue
			if first_iter:
				first_iter = False
			else:
				query += ","
			query += column.column_name
		query += ")\nVALUES\n\t"

		first_record = True
		for i in range(0, RECORDS_TO_INSERT):
			if first_record:
				first_record = False
			else:
				query += ",\n\t"

			query += "("
			first_iter = True
			for column in self.columns:
				if column.column_name == "id":
					continue
				if first_iter:
					first_iter = False
				else: 	
					query += ","
				query += column.get_value(i + 1)
			query += ")"

		query += ";\n"
		return query
			

class Column:

	def __init__(self, column_name, column_type, is_foreign_key = False):
		self.column_name = column_name
		self.column_type = column_type
		self.is_foreign_key = is_foreign_key
		self.decode_type()

	def decode_type(self):
		if self.column_type == "varchar":
			self.column_type = "VARCHAR(255)"
		elif self.column_type == "date":
			self.column_type = "DATETIME"
		elif self.column_type == "currency":
			self.column_type = "FLOAT"
		elif self.column_type == "string":
			self.column_type = "VARCHAR(255)"
		elif self.column_type == "long string":
			self.column_type = "TEXT"
		elif self.column_type == "boolean":
			self.column_type = "BOOLEAN"
		elif self.column_type == "double":
			self.column_type = "DOUBLE"
		elif self.column_type == "integer":
			self.column_type = "INT"
		elif self.column_type == "long text":
			self.column_type = "TEXT"
		elif self.column_type == "varchar(6)":
			self.column_type = "VARCHAR(6)"
		elif self.column_type == "int":
			self.column_type = "INT"
		elif self.column_type == "int not null":
			self.column_type = "INT NOT NULL"
		elif self.column_type == "varchar(16)":
			self.column_type = "VARCHAR(16)"
		elif self.column_type == "float":
			self.column_type = "FLOAT"
		elif self.column_type == "id":
			self.column_type = "INT PRIMARY KEY AUTO_INCREMENT"
		else:
			print "Unknown type - %s" % self.column_type

	def display(self):
		print "\t'%s' -> '%s'" % (self.column_name, self.column_type)

	def as_sql(self):
		return "%s %s" % (self.column_name, self.column_type)

	def get_value(self, current_id = 1):
		if self.column_name == "gender":
			return "'male'" if random.randint(1,10) % 2 else "'female'"
		elif self.column_name == "picture_url":
			return "'http://pics.com/my_pic'"
		elif self.is_foreign_key:
			return "%d" % current_id
		elif self.column_type == "VARCHAR(255)":
			return "'LEVSKI I TECHNO'"
		elif self.column_type == "DATETIME":
			return "'1914-02-07 13:04:20'"
		elif self.column_type == "FLOAT":
			return "%d" % random.uniform(13.12, 100)
		elif self.column_type == "TEXT":
			return "'This is placeholder text: bla bla bla bla...'"
		elif self.column_type == "BOOLEAN":
			return "TRUE" if random.randint(1,10) % 2 else "FALSE"
		elif self.column_type == "DOUBLE":
			return "%d" % random.uniform(13.19, 56)
		elif self.column_type == "INT":
			return "%d" % random.randint(1, 100)
		elif self.column_type == "VARCHAR(6)":
			return "'ABCDEF'"
		elif self.column_type == "VARCHAR(16)":
			return "'c8b1a9953c461129'"
		elif self.column_type == "id":
			print "Warning: Trying to get value of id!"
		else:
			print "Unknown type - %s" % self.column_type

def create_table(table_name, columns):
	table = Table(table_name)
	columns = columns.split(",")
	for column_string in columns:
		column_string = column_string.strip().split("->") #0 is column name, 1 is column type	
		if len(column_string) != 2:
			continue
		column = Column(column_string[0], column_string[1])
		table.add_column(column)

	return table

#TASK 1------------------------------------------------------------------------------------------------------------
def complete_task_1(content, database_cursor, database):
	task_1_file_content = "#" + content[0] #1. Create the following tables

	for row in TASK_1_TARGET_ROWS:
		table_name = content[row].split()[2]
		table_columns = content[row + 2]
		table = create_table(table_name, table_columns)
		database.add_table(table)
		create_query = table.as_sql_create_query()
		task_1_file_content += create_query + "\n"
		database_cursor.execute(create_query)	
		db_conn.commit()

	print "Task 1 completed."
	with open(DIR_NAME + TASK_1_FILE_NAME, "a") as text_file:
		text_file.write(task_1_file_content)
	print "Task 1: File '%s' created in directory '%s' containing Task 1" % (TASK_1_FILE_NAME, DIR_NAME)
#TASK 1------------------------------------------------------------------------------------------------------------

#TASK 2------------------------------------------------------------------------------------------------------------
def complete_task_2(content, database_cursor, database):
	task_2_file_content = "\n\n#" + content[TASK_2_TARGET_ROW - 1] #2. Connect the tables in the following way

	first_iteration = True
	for i in range(TASK_2_TARGET_ROW, TASK_2_TARGET_ROW + 3):
		row_string = content[i].split()
		conn_type =  row_string[3] + " " + row_string[4] + " " + row_string[5]
		conn = Connection(database.get_table(row_string[0]), conn_type, database.get_table(row_string[-1]))

		database.add_connection(conn)
	
		database_cursor.close()
		database_cursor = db_conn.cursor()
		connection_query = conn.get_sql_query(database)
		database_cursor.execute(connection_query)

		if first_iteration:
			first_iteration = False
		else:
			task_2_file_content += "\n\n" #add extra new line for better format

		task_2_file_content += conn.as_string() + connection_query

	task_2_file_content += "\n"

	print "Task 2 completed."
	with open(DIR_NAME + TASK_1_FILE_NAME, "a") as text_file:
		text_file.write(task_2_file_content)
	print "Task 2: Queries appended to '%s' in directory '%s'." % (TASK_1_FILE_NAME, DIR_NAME)	
#TASK 2------------------------------------------------------------------------------------------------------------
		
#TASK 3-------------------------------------------------------------------------------------------------------------
def complete_task_3(content, database_cursor, database):
	task_3_file_content = "USE %s;\n" % DATABASE_NAME
	task_3_file_content += database.get_insert_records_query(database_cursor)
	db_conn.commit()
	print "Task 3 completed."
	with open(DIR_NAME + TASK_3_FILE_NAME, "w") as text_file:
		text_file.write(task_3_file_content)
	print "Task 3: Inserts saved to '%s' in directory '%s'." % (TASK_3_FILE_NAME, DIR_NAME)
#TASK 3-------------------------------------------------------------------------------------------------------------		

#TASK 5-------------------------------------------------------------------------------------------------------------
def complete_task_5(content, database_cursor, database):
	print "You are asked for mysql user '%s' password so database can be exported." % MYSQL_USERNAME;
	if os.system('mysqldump -u root -p %s > %s' % (DATABASE_NAME, DIR_NAME + TASK_5_FILE_NAME)) == 0:
		print "Task 5 completed."
		print "Task 5: Database exported to '%s' in directory '%s'." % (TASK_5_FILE_NAME, DIR_NAME)
	else:
		print "Task 5: failed to export database. Check the password you entered and run the script again."
#TASK 5-------------------------------------------------------------------------------------------------------------

def parse_exam_file_content(content, database_cursor):
	database = Database(DATABASE_NAME)
	complete_task_1(content, database_cursor, database)
	complete_task_2(content, database_cursor, database)
	complete_task_3(content, database_cursor, database)
	complete_task_5(content, database_cursor, database)


#main
if len(sys.argv) != 2:
	show_error_message_and_exit("Invalid arguments! Script shoudl be runned like that 'python rek7.py path_to_exam_file'.")
#arguments ok

if not os.path.exists(DIR_NAME):
	print "Directory %s created." % DIR_NAME 
	os.makedirs(DIR_NAME)

if cursor.execute("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '%s'" % DATABASE_NAME) == 1:
	#database exists, drop it
	cursor.execute("DROP DATABASE IF EXISTS %s" % DATABASE_NAME)

#database does not exists
cursor.execute('CREATE DATABASE IF NOT EXISTS %s' % DATABASE_NAME) #creates db
print "Database '%s' created succesfully!" % DATABASE_NAME

cursor.execute("USE %s" % DATABASE_NAME)

with open(DIR_NAME + TASK_1_FILE_NAME, "w") as text_file:
		text_file.write("DROP DATABASE IF EXISTS {0};\nCREATE DATABASE IF NOT EXISTS {0};\nUSE {0};\n\n".format(DATABASE_NAME))

print "Connected to database '%s'." % DATABASE_NAME
#database connection ok

exam_file_path = sys.argv[1]

try: 
	with open(exam_file_path) as f:
		content = f.readlines()
	
	#read_file ok
	print "File '%s' read successfully!" % exam_file_path
	parse_exam_file_content(content, cursor)
except (OSError, IOError) as e:
	show_error_message_and_exit("Fata error: Cannot open file '%s'." % exam_file_path)

cursor.close()
db_conn.close()
