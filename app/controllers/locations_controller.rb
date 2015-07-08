class LocationsController < ApplicationController
  def show
    @location = Location.find params[:id]
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def print
    @location = Location.find params[:id]
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def update
    @location = Location.find params[:id]
    @rating = UltimateRating.new(location_params[:ultimate_rating])
    @location.ultimate_ratings << @rating
  end

  private

  def location_params
    params.require(:location).permit!
  end
end

