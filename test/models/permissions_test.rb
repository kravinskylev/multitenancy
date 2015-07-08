require_relative '../test_helper'

class PermissionsTest < ActiveSupport::TestCase
  def test_permission_lets_admin_edit_store
    admin = User.create(name: "lev",
                        email: "lev@dev.com",
                        password: "password")

    admin.roles.create(name: "admin")
    p = Permission.new(admin)

    assert p.can_edit_store?
  end
end
