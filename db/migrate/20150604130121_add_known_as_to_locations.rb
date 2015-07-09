class AddKnownAsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :known_as, :string
  end
end
