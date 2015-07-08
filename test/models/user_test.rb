require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase
  def test_verify_checks_user_role
    user = User.create(name: "Lev",
                       email: "lev@dev.com",
                       password: "password")

    admin_role = Role.create(name: "admin")

    store = Store.create(name: "pizza palace")
    store1 = Store.create(name: "pizza hut")

    user.user_roles.create(role: admin_role,
                            store: store)

    assert user.verify?("admin", store)
    refute user.verify?("admin", store1)
  end
end
