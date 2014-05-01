class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
    	t.column :animal_id, :integer
    	t.column :date, :date
    	t.column :longitude, :decimal
    	t.column :latitude, :decimal
    end
  end
end
