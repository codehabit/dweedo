class Visit < ActiveRecord::Base
  belongs_to :restaurant
  has_many :ratings
  accepts_nested_attributes_for :ratings
end
