class HotSpotsController < ApplicationController
  before_filter :authenticate_user!
  # GET /hot_spots
  # GET /hot_spots.json
  def index
    @hot_spots = current_user.hot_spots.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_spots }
    end
  end

  # GET /hot_spots/1
  # GET /hot_spots/1.json
  def show
    @hot_spot = current_user.hot_spots.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_spot }
    end
  end

  # GET /hot_spots/new
  # GET /hot_spots/new.json
  def new
    @hot_spot = current_user.hot_spots.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_spot }
    end
  end

  # GET /hot_spots/1/edit
  def edit
    @hot_spot = current_user.hot_spots.find(params[:id])
  end

  # POST /hot_spots
  # POST /hot_spots.json
  def create
    @hot_spot = current_user.hot_spots.new(params[:hot_spot])

    respond_to do |format|
      if @hot_spot.save
        format.html { redirect_to @hot_spot, notice: 'Hot spot was successfully created.' }
        format.json { render json: @hot_spot, status: :created, location: @hot_spot }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_spots/1
  # PUT /hot_spots/1.json
  def update
    @hot_spot = current_user.hot_spots.find(params[:id])

    respond_to do |format|
      if @hot_spot.update_attributes(params[:hot_spot])
        format.html { redirect_to @hot_spot, notice: 'Hot spot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_spots/1
  # DELETE /hot_spots/1.json
  def destroy
    @hot_spot = current_user.hot_spots.find(params[:id])
    @hot_spot.destroy

    respond_to do |format|
      format.html { redirect_to hot_spots_url }
      format.json { head :no_content }
    end
  end
end
