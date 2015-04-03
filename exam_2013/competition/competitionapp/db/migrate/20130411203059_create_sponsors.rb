class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.float :donated
      t.integer :years_participating

      t.timestamps
    end
  end
end
