#-------------------------------------------------
# SampleExecuter is executing sql files on MySql
# Requires installed MySql command line tool
# SampleExecuter only executes sql files
#-------------------------------------------------

class SampleExecuter
	class << self
		def start_mysql()
			print "Enter username: "
			username = gets
			system("mysql -u #{username} -p")
		end
		
		def execute_file(filepath)
			contents = Array.new
			File.open(filepath, "rb") do |file|
				file.each do |line|
					contents << line
				end
			end
			system(contents.join("\n"))
		end
		
		def execute_exam(path)
			self.start_mysql
			Dir.glob(path + "*.sql").each do |file|
				execute_file(file)
			end
			self.close_mysql
		end
		
		def close_mysql()
			system("exit")
		end
	end
end

#-------------------------------------------------
# How to run SampleExecuter
# SampleExecuter.execute_exam(PATH_TO_FILES)
#-------------------------------------------------