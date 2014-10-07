class Restaurant < ActiveRecord::Base
  has_many :visits
  accepts_nested_attributes_for :visits
end

