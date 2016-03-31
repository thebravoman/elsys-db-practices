sql_client = ARGV[0]
lookup_folder = ARGV[1]

row = ["creates.sql", "inserts.sql", "selects.sql"]

row.each do |file|
	system("#{sql_client} < #{lookup_folder}/#{file}")
end