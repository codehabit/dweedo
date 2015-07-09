class Rating < ActiveRecord::Base
  belongs_to :visit

  def self.types
    ["Overall", "Your server", "Your meal", "The ambiance", "Value"]
  end
end

