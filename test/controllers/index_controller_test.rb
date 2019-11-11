require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get index_home_url
    assert_response :success
  end

  test "should get contact" do
    get index_contact_url
    assert_response :success
  end

end
