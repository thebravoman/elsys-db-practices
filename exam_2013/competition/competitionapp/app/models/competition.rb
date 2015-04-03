class Competition < ActiveRecord::Base
  attr_accessible :budget, :date, :place
  
  has_and_belongs_to_many :judges
  has_and_belongs_to_many :teams
  has_and_belongs_to_many :sponsors
end
