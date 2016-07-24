require 'mysql'

begin
	students = Hash.new

	folders = Dir.glob('*').select {|f| File.directory? f}
	folders.each do |folder|
		Dir.chdir("#{Dir.pwd}/#{folder}") do
  			
  		end
	end
	
    con = Mysql.new 'localhost', 'root', 'asdf'
    input = gets.chomp
    rs = con.query input 
    #puts rs.fetch_row
    puts "No errors!"    
    
rescue Mysql::Error => e
    puts "There ARE errors in this sql query!"
   # puts e.errno
   # puts e.error
    
ensure
    con.close if con
end
