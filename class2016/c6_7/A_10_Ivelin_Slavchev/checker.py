# RUN WITH python checker.py mysql_db_username mysql_db_password path_to_sqls


from glob import glob
from subprocess import Popen, PIPE
from sys import argv


def open_connection(cmd):
	return Popen(cmd, stdin=PIPE, stdout=PIPE, stderr=PIPE)


def execute_files(process):
	for file in glob(argv[3] + "/*.sql"):
		f = open(file, "rb")
		process.stdin.write(f.read())
		f.close()


def close_connection(process):
	process.stdin.close()
	print(process.stdout.read().decode())
	print(process.stderr.read().decode())


process = open_connection(["mysql", "-u%s" % argv[1], '-p%s' % argv[2]])
execute_files(process)
close_connection(process)