class Restaurant < ActiveRecord::Base
  has_many :visits
  has_many :locations
  accepts_nested_attributes_for :visits, :locations
end

