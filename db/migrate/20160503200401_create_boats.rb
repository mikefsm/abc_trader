class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :boat_make
      t.string :boat_model
      t.string :boat_name
      t.integer :boat_model_year
      t.string :engine_make
      t.string :engine_model
      t.integer :engine_year
      t.integer :price
      t.integer :location_id
      t.integer :contact_id
      t.integer :category
      t.integer :fuel_type
      t.integer :condition
      t.integer :hull
      t.integer :engine_hours
      t.integer :length
      t.integer :beam
      t.integer :horsepower
      t.integer :propulsion

      t.timestamps null: false
    end
  end
end
