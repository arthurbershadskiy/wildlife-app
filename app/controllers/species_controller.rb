class SpeciesController < ApplicationController
	def index
		@species = Specie.all
		render 'species/index.html.erb'
	end

	def new
		@specie = Specie.new
		render 'species/new.html.erb'
	end

	def add
		@specie = Specie.new(name: params[:name])
		if @specie.save
			redirect_to root_path
		else
			render 'species/new.html.erb'
		end
	end
	def show
		@specie = Specie.find(params[:specie_id])
		render 'species/show.html.erb'
	end

	def edit
		@specie = Specie.find(params[:specie_id])
		render 'species/edit.html.erb'
	end
	def update
		@specie = Specie.find(params[:specie_id])
		if @specie.update(name: params[:name])
			redirect_to root_path
		else
			render 'species/edit.html.erb'
		end
	end
	def destroy
		@specie = Specie.find(params[:specie_id])
		@specie.destroy
		redirect_to root_path
	end
end
