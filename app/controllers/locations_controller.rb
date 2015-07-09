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
    begin
      @location = Location.find params[:id]
      @rating = UltimateRating.new(location_params[:ultimate_rating])
      @location.ultimate_ratings << @rating
    rescue Exception => e
      puts e.message
      puts e.backtrace.join("\n")
    end

  end

  private

  def location_params
    params.require(:location).permit!
  end
end

