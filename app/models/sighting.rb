class Sighting < ActiveRecord::Base
	belongs_to :specie
	has_one :region
	validates_presence_of :date, :latitude, :longitude, :specie_id
end
