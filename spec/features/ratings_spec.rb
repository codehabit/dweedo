require 'spec_helper'

describe VisitsController do
  context "a visit" do
    it "can be rated" do
      restaurant = create(:restaurant)
      visit restaurant_path restaurant
    end
  end
end

