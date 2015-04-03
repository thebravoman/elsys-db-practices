class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.boolean :payed
      t.integer :years_experience

      t.timestamps
    end
  end
end
