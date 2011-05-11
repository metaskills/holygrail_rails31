require 'test_helper'

class DemosControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'h1', 'Demos#index'
  end

end
