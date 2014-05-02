class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
    	t.string :name
    	t.integer :sighting_id
    end
  end
end
