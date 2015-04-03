require 'csv'

class MakeExams

	def make
		i = 0
		CSV.foreach(ARGV[0]) do |row|
			file_name = row[0]+"_"+row[1]+"_"+row[2]
			File.open(file_name+".txt","w") do |file|
				file.write file_name
				file.write "\n"
				file.write "Technological School 'Electronic Systems'\n"
				file.write "Sofia, #{Time.now.year}\n"
				file.write "Databases\n"
				file.write "Kiril Mitov & Dobromir Ivanov\n"
				file.write "\n"
				file.write `ruby main.rb #{i}`
				file.write "\n"
			end
			i+=1
		end
	end
end

m = MakeExams.new
m.make
	
