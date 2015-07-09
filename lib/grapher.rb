class Grapher
  def ultimate_ratings_for location
    filename = "#{location.restaurant.name}-#{location.known_as}"
    g = Gruff::Pie.new
    g.title = "Would you recommend #{location.restaurant.name} #{location.known_as} to a friend?"
    g.data "Yes", location.ultimate_ratings.where(recommended: true).count
    g.data "No", location.ultimate_ratings.where(recommended: false).count
    g.write Rails.root.join("app", "assets", "images", "#{filename}.png")
    filename
  end
end

