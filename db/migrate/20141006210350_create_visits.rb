class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :restaurant_id
      t.timestamps
    end
  end
end

