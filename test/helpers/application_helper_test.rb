require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "title helper" do
    assert_equal full_title, "TwitterClone"
    assert_equal full_title("Contact"), "Contact | TwitterClone"
  end
end
