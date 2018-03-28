require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest

	test "should get index" do
    	get login_path
    	assert_response :success
  	end 
end