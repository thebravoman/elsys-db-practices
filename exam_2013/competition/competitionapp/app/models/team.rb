class Team < ActiveRecord::Base
  attr_accessible :payed, :name, :years_experience
  
  has_and_belongs_to_many :students
  has_and_belongs_to_many :mentors
end
