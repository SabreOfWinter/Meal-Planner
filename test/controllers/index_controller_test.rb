require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    if :user_signed_in?
      get root_url
      assert_response :success

      assert_select 'title', 'Meal Planner'
      assert_select 'h1', 'Home'
      assert_select 'p', 'Welcome Home abc@gmail.com'
    end
  end

  test "should get contact" do
    get index_contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Meal Planner'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the form to send an email to our support team.'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params: {name: "Bailey", email: "bs00645@surrey.ac.uk", telephone:"1234567890", message:"Test"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
