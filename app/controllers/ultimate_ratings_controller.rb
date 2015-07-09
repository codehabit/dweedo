class UltimateRatingsController < ApplicationController
  def new
    @restaurant = Restaurant.find params[:restaurant_id]
    @location = Location.find params[:location_id]
  end
end

