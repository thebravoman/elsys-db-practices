exam = ARGV[0]
$extract_dir = "#{exam}/../extracted"


def extract_files(folder)
	Dir.foreach(folder) do |file| 
		ext = File.extname(file)
		if ext == ".gz"
			output = `tar -xvzf #{folder}/#{file} -C #{$extract_dir}`
			puts output
		elsif ext ==".zip"
			output = `unzip #{folder}/#{file} -d #{$extract_dir}`
			puts output
		elsif ext == ".rar"
			output =`unrar #{folder}/#{file} -d #{$extract_dir}`
			puts output
			
		end
	end
end

# puts "tar -xvzf #{exam}/asd -C #{$extract_dir}"

 extract_files(exam)