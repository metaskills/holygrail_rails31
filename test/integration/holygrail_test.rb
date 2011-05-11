require 'test_helper_integration'

class HolygrailTest < ActionDispatch::IntegrationTest
  
  test "All things JS related" do
    visit demos_path
    assert page.has_selector?('h1#demoIndex')
  end
  
  
end
