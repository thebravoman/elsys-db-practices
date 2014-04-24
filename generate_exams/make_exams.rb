require 'csv'

class MakeExams
	def print_header student_info
		
	end
	
	def make
		CSV.foreach("students.csv") do |row|
			file_name = row[0]+"_"+row[1]+"_"+row[2]
			File.open(file_name+".txt","w") do |file|
				file.write file_name
				file.write "\n"
				file.write "Technological School 'Electronic Systems'\n"
				file.write "Sofia, 2014\n"
				file.write "Databases\n"
				file.write "Kiril Mitov\n"
				file.write "\n"
				file.write `ruby main.rb`
				file.write "\n"
			end
		end
	end
end

m = MakeExams.new
m.make
	
