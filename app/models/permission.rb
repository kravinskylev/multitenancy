class Permission
  def initialize(user)
    @user = user
  end

  def can_edit_store?
    @user.verify?("admin")
  end
end
