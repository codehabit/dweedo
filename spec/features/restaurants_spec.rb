require 'spec_helper'

describe RestaurantsController do
  it "exists" do
    restaurant = create(:restaurant, name: "Lou Malnati's")
    visit restaurant_path restaurant
    expect(page).to have_content restaurant.name
  end

  example "a restaurant is created" do
    visit new_restaurant_path
    fill_in "Name", with: "Mamamia's"
    fill_in "Description", with: "A Snazzy Pizza Join"
    click_button "Get started"
    expect(page).to have_content "Mamamia's"
  end
end

