require 'test_helper'

class DemosControllerTest < ActionController::TestCase
  
  test "Get index" do
    get :index
    assert_response :success
    assert_select 'h1#demoIndex', 'Demos#index'
  end
  
  test "Redirect to index" do
    get :goto_index
    assert_redirected_to demos_url
  end


end
