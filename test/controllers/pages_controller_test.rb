require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get rules" do
    get pages_rules_url
    assert_response :success
  end

  test "should get rgpd" do
    get pages_rgpd_url
    assert_response :success
  end

end
