require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("bs00645@surrey.ac.uk", "Bailey Steadman", "1234567890", @message = "Hello")
    assert_equal ['info@mealplanner.com'], mail.to
    assert_equal ['info@mealplanner.com'], mail.from
  end

end
