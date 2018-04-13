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

  def all_friends
    my_friends = self.friends
    ivfriends = Friendship.where(friend_id: self.id)
    all_friends = (my_friends + ivfriends).uniq.sort
  end
end