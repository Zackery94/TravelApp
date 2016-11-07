class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :rating
      t.integer :people
      t.string :type

      t.timestamps null: false
    end
  end
end
