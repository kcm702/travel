class PagesController < ApplicationController
 
 def home
  	@trips = current_user.trips

  	@trips.each do |trip| 
		trip.description
	end

	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
	end 
end

  def about
  end
end
