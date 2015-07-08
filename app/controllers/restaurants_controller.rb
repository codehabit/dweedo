class RestaurantsController < ApplicationController
  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.locations.build
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.attributes = restaurant_params
    if @restaurant.valid?
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render action: :edit
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.valid?
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render action: :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit!
  end
end

