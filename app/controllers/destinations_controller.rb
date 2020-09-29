class DestinationsController < ApplicationController
  def index
  end
 
  def new
    @destinations = Destinations.new
  end
 
  def create
   @destinations = Destinations.new(destinations_params)
   if @destinations.save
    redirect_to root_path
  else
    render :index
  end
  end
 
  private
 
  def destinations_params
   params.permit(:post_code, :prefecture_id, :city, :addres, :building_name, :phone_number)
  end
end
