require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "title helper" do
    assert_equal full_title,         FILL_IN
    assert_equal full_title("Contact"), FILL_IN
  end
end