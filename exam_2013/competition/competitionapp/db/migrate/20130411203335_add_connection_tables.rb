class AddConnectionTables < ActiveRecord::Migration
  def up
		#~ create_table :instances_instances_exports, :id => false do |t|
		  #~ t.references :instances_export, :instance
		#~ end
		
		create_table :students_teams, :id=>false do |t|
			t.references :student, :team
		end
		
		create_table :mentors_teams, :id=>false do |t|
			t.references :mentor, :team
		end
		
		create_table :competitions_teams, :id=>false do |t|
			t.references :competition, :team
		end
		
		create_table :competitions_judges, :id=>false do |t|
			t.references :competition, :judge
		end
		
		create_table :competitions_sponsors, :id=>false do |t|
			t.references :competition, :sponsor
		end

  end

  def down
		drop_table :students_teams
		drop_table :mentors_teams
		drop_table :competitions_teams
		drop_table :competitions_judges
		drop_table :competitions_sponsors
  end

end
