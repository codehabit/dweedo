class VisitsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @visit = Visit.new
    @visit.ratings.build
  end

  def create
    visit = Visit.create(visit_params)
    redirect_to restaurant_path(visit.restaurant)
  end

  private

  def visit_params
    params.require(:visit).permit!
  end
end

