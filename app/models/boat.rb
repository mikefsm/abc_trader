# create_table :boats, force: :cascade do |t|
#   t.string   :boat_make
#   t.string   :boat_model
#   t.string   :boat_name
#   t.integer  :boat_model_year
#   t.string   :engine_make
#   t.string   :engine_model
#   t.integer  :engine_year
#   t.integer  :price
#   t.integer  :location_id
#   t.integer  :contact_id
#   t.integer  :category
#   t.integer  :fuel_type
#   t.integer  :condition
#   t.integer  :hull
#   t.integer  :engine_hours
#   t.integer  :length
#   t.integer  :beam
#   t.integer  :horsepower
#   t.integer  :propulsion
#   t.datetime :created_at,      null: false
#   t.datetime :updated_at,      null: false
#   t.text     :tagline
#   t.text     :description
# end

class Boat < ActiveRecord::Base

  enum category: [:fishing, :crusier, :pontoon, :tritoon, :bowrider, :sailing]
  enum fuel_type: [:gas, :diesel, :sail]
  enum condition: [:mint, :used]
  enum propulsion: [:single_outboard, :twin_outboard, :jet_drive, :inboard]
  enum hull: [:fiberglass, :aluminum]

  monetize :price

end
