class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :visit_id
      t.string :value
      t.string :name
      t.timestamps
    end
  end
end
