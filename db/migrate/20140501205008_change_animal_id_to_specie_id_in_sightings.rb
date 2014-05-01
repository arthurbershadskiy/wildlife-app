class ChangeAnimalIdToSpecieIdInSightings < ActiveRecord::Migration
  def change
  	rename_column :sightings, :animal_id, :specie_id
  end
end
