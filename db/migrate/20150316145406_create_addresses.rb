class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country_code
      t.string :country
      t.integer :restaurant_id
      t.timestamps
    end
  end
end

