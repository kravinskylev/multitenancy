require_relative '../test_helper'

class AdminEditsStoreTest < ActionDispatch::IntegrationTest

  def setup
    Capybara.app = Storedom::Application
  end

  def test_admin_edits_a_store
    admin = User.create(name: "Justin", email: "jdawg@gmail.com", password: "password")
    store = Store.create(name: "Pizza Palace")

    visit edit_store_path(store)
    assert_equal root_path, current_path
  end

end
