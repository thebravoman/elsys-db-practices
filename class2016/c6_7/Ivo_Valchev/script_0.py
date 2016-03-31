import sqlite3 as sqlite
import sys

if (len(sys.argv) != 3):
    print "\n\tRequires two arguments:"
    print "\n\t\tRunSQLiteScript.py {scriptfilename} {databasefilename}\n\n"
    sys.exit()

scriptfilename = sys.argv[1]
dbfilename = sys.argv[2]
try:
    connection = sqlite.connect(dbfilename)
    cursor = connection.cursor()

    print "Reading Script..."
    scriptFile = open(scriptfilename, 'r')
    script = scriptFile.read()
    scriptFile.close()

    print "Running Script..."
    cursor.executescript(script)

    connection.commit()
    print "The script passed successfully!\n"

except Exception, e:
    print "The script failed!"
    print e
finally:
    print "\nClosing DB"
    connection.close()
