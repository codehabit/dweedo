require 'spec_helper'

describe RestaurantsController do
  it "exists" do
    restaurant = create(:restaurant, name: "Lou Malnati's")
    visit restaurant_path restaurant
    expect(page).to have_content restaurant.name
  end

  describe "registering a restaurant" do
    before :each do
      visit new_restaurant_path
      fill_in "Name", with: "Mamamia's"
      fill_in "Address", with: "123 Main Street"
      fill_in "Description", with: "A Snazzy Pizza Join"
      click_button "Get started"
    end

    it "saves the name" do
      expect(page).to have_content "Mamamia's"
    end

    it "saves the address" do
      expect(page).to have_content "Mamamia's"
    end

    it "saves the description" do
      expect(page).to have_content "Mamamia's"
    end
  end
end

