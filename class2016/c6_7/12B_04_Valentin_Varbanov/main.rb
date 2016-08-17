#!/usr/bin/env ruby

# run with task.txt as an argument

path = ARGV[0]
file_content = ""
if File.exist?(path) then
	File.open(path, "r") { |file| file_content = file.read }
end
lines = file_content.split("\n")

tables = Hash.new
last_table_name = ""
table_index = -1
lines.each do |line|
	if line.include? "Create table" then
		last_table_name = line[13..-1]
		tables[last_table_name] = nil
		table_index = 0
		next
	end
	if table_index == 0 then
		table_index += 1
		next
	end
	if table_index == 1 then
		tables[last_table_name] = Hash.new
		line.split(",").each do |col|
			pair = col[2..-1].split("->")
			tmp = nil
			case pair[1]
			when "varchar"
				tmp = "VARCHAR(255)"
			when "date"
				tmp = "DATE"
			when "currency"
				tmp = "VARCHAR(255)"
			when "string"
				tmp = "VARCHAR(255)"
			when "long string"
				tmp = "VARCHAR(255)"
			when "boolean"
				tmp = "INT"
			when "long text"
				tmp = "VARCHAR(255)"
			when "double"
				tmp = "Float"
			when "integer"
				tmp = "INT"
			when "float"
				tmp = "Float"
			when "varchar(6)"
				tmp = "VARCHAR(6)"
			when "varchar(16)"
				tmp = "VARCHAR(16)"
			when "int"
				tmp = "INT"
			end
			tables[last_table_name][pair[0]] = tmp
		end
		table_index = -1
	end

	# p `sqlite3`
	
end

tables.each do |key, value|
	# p key
	# p value
	str = "id INT PRIMARY KEY"
	value.each do |k, v|
		str += ",\n"
		str += k + " " + v
	end
	puts "CREATE TABLE #{key} (\n #{str} \n);"

	#`CREATE TABLE #{key} (\n #{str} \n);`

	# run creates.sql on onother sqlite3 db

	#compare the db from sqlite created with the script with the one from the creates

	# check result 

  # continue with other tasks.....

end
