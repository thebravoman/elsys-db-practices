import os
import sys
import copy

folder_path = os.path.abspath(sys.argv[1])
TMP_DIR = "tmp_dir"
os.system("mkdir %s" % TMP_DIR)

def extract_exam_files(exam_folder):
	command = ""
	for file in os.listdir(exam_folder):
		if file.endswith(".tar.gz"):
			os.system("tar -xvzf %s -C %s" % (exam_folder + "/" + file, TMP_DIR))
		elif file.endswith(".zip"):	
			os.system("unzip -o %s -d %s" % (exam_folder + "/" + file, TMP_DIR))

def iterate_exams(exam_folder):
	students = {}
	for subdir, dirs, files in os.walk(exam_folder):
		name = subdir.split("/")[-1]
		if len(str(name).split("_")) != 4:
			continue
		students[name] = []
		for file in files:
			filepath = subdir + '/' + file
			students[name].append(filepath)
	return students

def generate_result(students):
	result = {}
	files = ("creates.sql", "inserts.sql", "selects.sql", "selects2.sql", "export1.sql", "export2.sql", "migrates.sql", "selects1.sql")
	for key in students:
		result[key] = 0
		for it in students[key]:
			if it.split("/")[-1] in files:
				result[key] += 1
	return result

extract_exam_files(folder_path)
result = iterate_exams(os.path.dirname(os.path.realpath(__file__)) + "/" + TMP_DIR)

result = generate_result(result)

os.system("rm -rf %s" % TMP_DIR)

print result

