class AddWouldRecommendToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :would_recommend, :boolean
  end
end
