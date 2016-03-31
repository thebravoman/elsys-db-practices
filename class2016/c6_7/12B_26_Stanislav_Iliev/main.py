import argparse
import glob
import os
import sys
import sqlalchemy

def check_creates(path):
	if not path: sys.exit('No creates.sql file found')

	with open(path) as file:
		engine = sqlalchemy.create_engine('mysql://root:passw@localhost')
		engine.execute(file.read())

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('directory', type=str, help='students folder, for example: Gosho_Peshov_B_26', action='store')
	args = parser.parse_args()

	all_files = glob.glob(os.path.join(args.directory, '*.sql'))
	creates_file = [f for f in all_files if 'creates.sql' in f]
	
	check_creates(creates_file[0])

if __name__ == '__main__':
		main()
