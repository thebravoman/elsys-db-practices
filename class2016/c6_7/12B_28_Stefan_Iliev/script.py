import os, sys, subprocess


database_name = ""

ARG_path = sys.argv[1]

def FindDatabaseName(fContent):
	for line in fContent:
		low_line = line.lower()
		if "create database" in low_line:
			database_name = line.split(" ")
			for elem in database_name:
				if ";" in elem:
					return elem.split(";")[0]  

def HandleFile(filename):
	fContent = []

	with open(filename) as f:
		for line in f: fContent.append(line.replace("\n",""))

	if "creates" in filename.lower(): 
		global database_name
		database_name  = FindDatabaseName(fContent)
		mysql_command = "mysql < %s"%(filename)
		os.system(mysql_command)
		return

	mysql_command = "mysql %s < %s"%(database_name,filename)
	os.system(mysql_command)


files = os.listdir(ARG_path)

PREDEFINED_FILENAMES = ["creates.sql","inserts.sql","selects.sql"] #TODO: Move to config
EXECUTION_ORDER = [0,1,2] 
FileMap = {}

for file in files: #TODO: Make it recursively walk through directories.
	filename = file.lower()
	if filename in PREDEFINED_FILENAMES:
		FileMap[filename] = ARG_path + "/" + file
		
for order in EXECUTION_ORDER:
	HandleFile(FileMap[PREDEFINED_FILENAMES[order]])