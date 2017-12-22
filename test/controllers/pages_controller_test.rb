require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "TwitterClone"
  end 

  test "should get contact" do
    get page_path('contact')
    assert_response :success
    assert_select "title", "Contact | TwitterClone"
  end
end
