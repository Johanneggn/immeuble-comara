require 'test_helper'

class EquipementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get equipements_new_url
    assert_response :success
  end

  test "should get create" do
    get equipements_create_url
    assert_response :success
  end

end
