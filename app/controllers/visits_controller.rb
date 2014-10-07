class VisitsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @visit = Visit.new
  end
end

