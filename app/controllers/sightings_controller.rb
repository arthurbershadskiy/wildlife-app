class SightingsController < ApplicationController
	def new
		specie = Specie.find(params[:specie_id])
		@sighting = specie.sightings.new
		render 'sightings/new.html.erb'

	end
	def create
		@specie = Specie.find(params[:specie_id])
		@sighting = @specie.sightings.new(params[:sighting])
		if @sighting.save
			render '/sightings/show.html.erb'
			flash.now[:notice] = 'Added sighting'
		else
			render "/sightings/new.html.erb"
			flash.now[:alert] = 'Sighting not added.'
		end
	end

	def edit
		specie = Specie.find(params[:specie_id])
		@sighting = specie.sightings.find(params[:sighting_id])
		render '/sightings/edit.html.erb'
	end

	def update
		specie = Specie.find(params[:specie_id])
		@sighting = specie.sightings.find(params[:sighting_id])
		if @sighting.update_attributes(params[:sighting])
			redirect_to root_path
		else
			render '/sightings/edit.html.erb'
		end
	end

	def delete
		specie = Specie.find(params[:specie_id])
		@sighting = specie.sightings.find(params[:sighting_id])
		@sighting.destroy
		redirect_to :back
		flash[:alert] = 'Sighting deleted.'
	end
end
