class Field
	attr_accessor :name, :type
	
	def initialize(name,type)
		self.name = name
		self.type = type
	end
	
end

class Table
	attr_accessor :name
	attr_accessor :fields
	
	def initialize(name)
		self.name = name
	end
	
end

class Article < Table
	def initialize
		super "Article"
		self.fields = Article.possible_fields
	end
	
	def self.possible_fields
		[Field.new("name","varchar"),Field.new("published_on","date"),Field.new("price","currency")].shuffle[0..1]
	end
end

class Category < Table
	def initialize
		super "Category"
		self.fields = Category.possible_fields
	end
	
	def self.possible_fields
		[Field.new("name","varchar"),Field.new("description","varchar"),Field.new("date_created_on","date")].shuffle[0..1]
	end
end

class User < Table
	def initialize
		super "User"
		self.fields = User.possible_fields
	end
	
	def self.possible_fields
		[Field.new("name","varchar"),Field.new("password","varchar"),Field.new("created_on","date"),Field.new("age","integer")].shuffle[0..2]
	end
end

class Tag < Table
	def initialize
		super "Tag"
		self.fields = Tag.possible_fields
	end
	
	def self.possible_fields
		[Field.new("name","varchar"),Field.new("priority","int"),Field.new("description","varchar")].shuffle[0..1]
	end
end

class Connection

	attr_reader :table1, :table2
	
	def initialize(table1, table2)
		@table1 = table1
		@table2 = table2
		connections = ["one to one", "one to many", "many to one", "many to many"]
		@connection = connections[rand(connections.size)]
	end
	
	def get_description
		"#{@table1.name} has a #{@connection} connection to #{@table2.name}"
	end

end

class Main

	attr_accessor :conn_complexity
	
	def initialize
		@conn_complexity = 2
	end
	
	def generate_tables tables
		puts "1. Create the following tables"
		
		tables.each do |table|
			result = "Create table #{table.name} with columns\n"
			table.fields.each do |field|
				result << "\t #{field.name}:#{field.type}\n"
			end
			result << "\n"
			puts result
		end 
		puts "As a result SQL queries must be created"
		puts "\n"
	end
	
	def generate_connections tables
		new_tables = tables.dup
		table1 = new_tables[rand(tables.size)]
		connections = []
		0.upto(conn_complexity) do 
			table2 = table1
			while table2 == table1 
				table2 = new_tables[rand(new_tables.size)]
			end
			conn =Connection.new(table1, table2)
			connections << conn
			new_tables.delete(table1)
			table1 = table2
		end

		puts "2. Connect the tables in the following way"
		connections_string = ""
		connections.each do  |conn|
			connections_string<< conn.get_description
			connections_string << "\n"
		end
		puts connections_string
		puts "As a result SQL queries must be created"
		puts "\n"
		connections
	end
	
	def print_insert
		puts "\n"
		puts "3. Insert"
		puts "Add at least two records in each table"
		puts "As a result SQL queries must be created"
		puts "\n"
	end
	
	def generate_select conns
		puts "4. Answer the following question"
		puts "Which are the #{conns[1].table2.name}(s) for a given #{conns[0].table1.name}"
		puts "As a result SQL query must be created"
		puts "\n"
	end
	
	def generate_migrate conns
		puts "6. Execute the following migration"
		table = conns[1].table1
		puts "Separate #{table.name} on two tables"
		puts "#{table.name}_part1 containing #{table.fields[rand(table.fields.size)].name}"
		puts "#{table.name}_part2 containing all the other fields"
		puts "As a result SQL queries+code in other programming language must be create"
		puts 
	end

	def generate_second_select conns
		puts "8. Answer the following question"
		puts "Which are the #{conns[2].table2.name}(s) for a given #{conns[1].table1.name}"
		puts "As a result SQL query must be created"
		puts "\n"
	end
	
	
	def do_generate
		tables = [Article.new, Category.new, User.new, Tag.new]
		generate_tables tables
		conns = generate_connections tables
		print_insert
		generate_select conns
		puts "5. Export the Data Base to SQL or CSV"
		puts "\n"
		generate_migrate conns
		puts "7. Export the Data Base to SQL or CSV"
		puts "\n"
		generate_second_select conns
	end
	
end

main = Main.new
main.do_generate

