class UsersController < ApplicationController
  def show
  	@user=User.find(params[:id])
  	@trips=@user.trips
  	@destinations=@user.destinations
  	@accommodations=@user.accommodations
  	@hot_spots=@user.hot_spots
  	@notes=@user.notes
  end
end
