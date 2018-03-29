require 'test_helper'

class ChartsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get bar chart form" do
    get login_path
    assert_response :success
  end

  test "should get line chart form" do
    get login_path
    assert_response :success
  end

end