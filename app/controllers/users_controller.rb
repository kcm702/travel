class UsersController < ApplicationController
	before_filter :authenticate_user!

  def filter
  @user=current_user
    @trips=current_user.trips.all
    @destinations=current_user.destinations.all
    @accommodations=current_user.accommodations.all
    @hot_spots=current_user.hot_spots.all
    @notes=current_user.notes.all
  
  end
	
  def show
	@user=current_user
  	@trips=current_user.trips.all
    @destinations=current_user.destinations.all
  	@accommodations=current_user.accommodations.all
  	@hot_spots=current_user.hot_spots.all
  	@notes=current_user.notes.all
	
  end
end
