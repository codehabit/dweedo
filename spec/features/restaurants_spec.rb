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
      fill_in "Street address", with: "123 Main Street"
      fill_in "City", with: "Smalleville"
      fill_in "State", with: "Ohio"
      fill_in "Zip code", with: "12345"
      fill_in "Description", with: "A Snazzy Pizza Joint"
      click_button "Get started"
    end

    it "saves the name" do
      expect(page).to have_content "Mamamia's"
    end

    it "saves the street address" do
      expect(page).to have_content "123 Main Street"
    end

    it "saves the state" do
      expect(page).to have_content "Ohio"
    end

    it "saves the city" do
      expect(page).to have_content "Smalleville"
    end

    it "saves the zip code" do
      expect(page).to have_content "12345"
    end

    it "saves the description" do
      expect(page).to have_content "A Snazzy Pizza Joint"
    end
  end
end

