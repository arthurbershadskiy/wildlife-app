class Sighting < ActiveRecord::Base
	belongs_to :specie
	validates_presence_of :date, :latitude, :longitude, :specie_id
end
