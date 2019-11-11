require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Meal Planner'
    assert_select 'h1', 'Home'
    assert_select 'p', 'Welcome Home!'
  end

  test "should get contact" do
    get index_contact_url
    assert_response :success
  end

end
