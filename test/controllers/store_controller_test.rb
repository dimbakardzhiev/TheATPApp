require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  
  test "should get store" do
    get login_path
    assert_response :success
  end
  
end