module UsersHelper
  def admin?
    self.role == "admin"
  end
end