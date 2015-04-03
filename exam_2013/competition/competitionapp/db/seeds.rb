# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.logger = Logger.new(STDOUT)

def random_boolean
	Random.rand(2)==0
end

def create_sponsors
	sponsors = []
	10.times do |n|
		sponsors <<Sponsor.create(:name=>"sponsor"+SecureRandom.hex(1), :donated=>Random.rand(100000), :years_participating=>Random.rand(4))		
	end
	sponsors
end

def create_competitions
	competitions = []
	10.times do |n|
		competitions << Competition.create(:date=>Time.now, :place=>"city"+SecureRandom.hex(1), :budget=>Random.rand(100000))
	end
	competitions
end

def create_students
	students = []
	2048.times do |n|
		students << Student.create(:name=>"student"+SecureRandom.hex(3), :age=>Random.rand(100), :gender=> random_boolean ? "male": "female")
	end
	students
end

def create_teams
	result = []
	128.times do |n|
		result << Team.create(:name=>"team"+SecureRandom.hex(3), :payed=> random_boolean, :years_experience=>Random.rand(7))
	end
	result
end

def create_mentors
	result = []
	256.times do |n|
		result << Mentor.create(:name=>"mentor"+SecureRandom.hex(3), :age=>Random.rand(100), :experience_in_years=> Random.rand(10), :number_of_years_mentor=>Random.rand(10))
	end
	result
end

def create_judges
	result = []
	64.times do |n|
		result << Judge.create(:name=>"judge"+SecureRandom.hex(3), :age=>Random.rand(100), :category=>"category"+SecureRandom.hex(1))
	end
	result
end


sponsors = create_sponsors
competitions = create_competitions
students = create_students
teams = create_teams
judges = create_judges
mentors = create_mentors

sponsors.each do |ss|
	Random.rand(16).times do 
		cc = competitions.sample
		cc.sponsors << ss
		cc.save
	end
end

teams.each do |team|
	Random.rand(32).times do 
		cc = competitions.sample
		cc.teams << team
		cc.save
	end
	Random.rand(16).times do 
		student = students.sample
		team.students << student
		team.save
	end
	Random.rand(8).times do
		mentor = mentors.sample
		team.mentors << mentor
		team.save
	end
end

competitions.each do |competition|
	Random.rand(16).times do 
		judge = judges.sample
		competition.judges << judge
		competition.save
	end
end











