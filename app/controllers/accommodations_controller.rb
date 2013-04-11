class AccommodationsController < ApplicationController
  before_filter :authenticate_user!
  # GET /accommodations
  # GET /accommodations.json
  def index
    @accommodations = current_user.accommodations.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accommodations }
    end
  end

  # GET /accommodations/1
  # GET /accommodations/1.json
  def show
    @accommodation = current_user.accommodations.find(params[:id])
    @trip_idn = @accommodation.trip_id
    @trip = current_user.trips.find(@trip_idn)
    @trip_description = current_user.trips.find(@trip_idn).description

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accommodation }
    end
  end

  # GET /accommodations/new
  # GET /accommodations/new.json
  def new
    @accommodation = current_user.accommodations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accommodation }
    end
  end

  # GET /accommodations/1/edit
  def edit
    @accommodation = current_user.accommodations.find(params[:id])
  end

  # POST /accommodations
  # POST /accommodations.json
  def create
    @accommodation = current_user.accommodations.new(params[:accommodation])

    respond_to do |format|
      if @accommodation.save
        format.html { redirect_to @accommodation, notice: 'Accommodation was successfully created.' }
        format.json { render json: @accommodation, status: :created, location: @accommodation }
      else
        format.html { render action: "new" }
        format.json { render json: @accommodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accommodations/1
  # PUT /accommodations/1.json
  def update
    @accommodation = current_user.accommodations.find(params[:id])

    respond_to do |format|
      if @accommodation.update_attributes(params[:accommodation])
        format.html { redirect_to @accommodation, notice: 'Accommodation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accommodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accommodations/1
  # DELETE /accommodations/1.json
  def destroy
    @accommodation = current_user.accommodations.find(params[:id])
    @accommodation.destroy

    respond_to do |format|
      format.html { redirect_to accommodations_url }
      format.json { head :no_content }
    end
  end
end
