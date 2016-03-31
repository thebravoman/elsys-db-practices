require "mysql"
mysql = Mysql.new("localhost", "root", "password", "class")

#folders part
dirs = Dir.entries(Dir.pwd).select do |entry|
  File.directory? File.join(Dir.pwd,entry) and !(entry =='.' || entry == '..')
end
dirs.each do |dir|
  
end

#mysql part
def run_sqls
  mysql.query "source #{Dir.pwd}/reset_db.sql;"
  query = "source #{Dir.pwd}/creates.sql;"
  rs = mysql.query query 
  rs.each_hash { |h| p h}
  begin
    mysql.query query
    puts "works"
  rescue
    puts "doesn't work"
  end
end
mysql.close
