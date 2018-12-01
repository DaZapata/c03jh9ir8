class ActorsController < ApplicationController

  def index
  		@actores=Actor.all
  	end

  	def new

  	end

  	def create
  		if params['alive']=="on"
  			alive=true

  		else
  			alive=false
  		end

  		Actor.create(
  			name: params['actor_name'],
  			image_url:params['image_url'],
  			bio: params['bio'],
  			birth_date: params['dob'],
  			birth_place:params['pob'],
  			alive: alive,
  			death_date: params['dod'],
  			death_place: params['pod',]
  			)

  		redirect_to actors_path

  	end


end
