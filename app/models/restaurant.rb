class Restaurant < ActiveRecord::Base
  has_many :visits
  has_many :addresses
  accepts_nested_attributes_for :visits, :addresses
end

