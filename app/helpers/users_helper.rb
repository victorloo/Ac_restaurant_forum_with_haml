module UsersHelper
  def admin?
    self.role == "admin"
  end

  def following?(user)
    self.followings.include?(user)
  end
  
  def friend?(user)
    self.friends.include?(user)
  end
end