require_relative '../test_helper'

class PermissionsTest < ActiveSupport::TestCase
  def test_it_takes_in_a_user

  end

  def test_it_verifies_permissions

  end

  def permission_lets_admin_edit_store
    admin = User.create(name: "lev",
                        email: "lev@dev.com"
                        password: "password")

    admin.roles.create(name: "admin")


  end
end
