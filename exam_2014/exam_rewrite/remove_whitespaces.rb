content = File.read(ARGV[0])
content.gsub!(/\s+/, "")
puts content
