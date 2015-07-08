require_relative '../test_helper'

class PermissionsTest < ActiveSupport::TestCase
  def test_permission_lets_admin_edit_store
    admin = User.create(name: "lev",
                        email: "lev@dev.com",
                        password: "password")
    user = User.create(name: "lev",
                        email: "lev@dev.com",
                        password: "password")

    store = Store.create(name: "pizza palace")
    store2 = Store.create(name: "wazzop")

    admin_role = Role.create(name: "admin")
    admin.user_roles.create(role: admin_role,
                            store: store)

    p = Permission.new(admin)


    assert p.can_edit_store?(store)
    refute p.can_edit_store?(store2)
  end
end
