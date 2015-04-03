class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.datetime :date
      t.string :place
      t.float :budget

      t.timestamps
    end
  end
end
