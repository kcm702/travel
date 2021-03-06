class TripsController < ApplicationController
  before_filter :authenticate_user!
  # GET /trips
  # GET /trips.json
  def index
    @trips = current_user.trips.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = current_user.trips.find(params[:id])
    @accommodations = current_user.accommodations.where(:trip_id => @trip.id)
    @accommodations_count= current_user.accommodations.where(:trip_id => @trip.id).count
    @hot_spots = current_user.hot_spots.where(:trip_id => @trip.id)
    @hot_spots_count= current_user.hot_spots.where(:trip_id => @trip.id).count
    @notes = current_user.notes.where(:trip_id => @trip.id)
    @notes_count= current_user.notes.where(:trip_id => @trip.id).count
        
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/new
  # GET /trips/new.json
  def new
    @trip = current_user.trips.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/1/edit
  def edit
    @trip = current_user.trips.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = current_user.trips.new(params[:trip])

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = current_user.trips.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = current_user.trips.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def test 
    @trips = current_user.trips.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

end

