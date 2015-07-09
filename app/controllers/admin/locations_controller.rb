require 'grapher'

class Admin::LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @graph = Grapher.new.ultimate_ratings_for @location
  end
end

