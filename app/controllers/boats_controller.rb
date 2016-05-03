class BoatsController < ApplicationController
  before_filter :get_boat, only: [:show, :edit, :update, :destroy]

  def index
    @boats = Boat.all
  end

  def show
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      flash[:success] = "Boat Created"
      redirect_to boats_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @boat.update_attributes(boat_params)
      flash[:success] = "Boat Updated"
      redirect_to boats_url
    else
      render :edit
    end
  end

  def destroy
    @boat.destroy
    flash[:success] = 'Boat Deleted'
    redirect_to boats_url
  end

  private

  def get_boat
    @boat = Boat.find(params[:id])
  end 

  def boat_params
    params.require(:boat).permit( :boat_make, :boat_model, :boat_name, :boat_model_year, 
                                  :engine_make, :engine_model, :engine_year, :price, :location_id, 
                                  :contact_id, :category, :fuel_type, :condition, :hull, :engine_hours, 
                                  :length, :beam, :horsepower, :propulsion, :created_at, :updated_at,
                                  :tagline, :description)
  end

end