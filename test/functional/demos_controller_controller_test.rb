require 'test_helper'

class DemosControllerControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'h1', 'DemosController#index'
  end

end
