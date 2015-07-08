class Location < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ultimate_ratings
  accepts_nested_attributes_for :ultimate_ratings
end

