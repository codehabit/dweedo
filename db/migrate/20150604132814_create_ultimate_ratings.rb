class CreateUltimateRatings < ActiveRecord::Migration
  def change
    create_table :ultimate_ratings do |t|
      t.integer :location_id
      t.boolean :recommended
      t.timestamps
    end
  end
end

