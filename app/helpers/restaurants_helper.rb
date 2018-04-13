module RestaurantsHelper
  def is_favorited?(user)
    self.favorited_users.include?(user)
  end

  def is_liked?(user)
    self.liked_users.include?(user)
  end
  
  def count_favorites
    self.favorites_count = self.favorites.size
    self.save
  end
  
end
