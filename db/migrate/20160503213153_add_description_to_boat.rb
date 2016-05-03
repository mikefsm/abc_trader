class AddDescriptionToBoat < ActiveRecord::Migration
  def change
    add_column :boats, :tagline, :text
    add_column :boats, :description, :text
  end
end
