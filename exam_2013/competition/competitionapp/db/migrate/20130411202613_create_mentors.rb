class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.integer :age
      t.float :experience_in_years
      t.integer :number_of_years_mentor

      t.timestamps
    end
  end
end
