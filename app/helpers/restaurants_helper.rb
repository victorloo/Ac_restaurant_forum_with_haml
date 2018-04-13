module RestaurantsHelper
  def is_favorited?(user)
    self.favorited_users.include?(user)
  end
end
