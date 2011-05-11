require 'test_helper_integration'

class HolygrailTest < ActionDispatch::IntegrationTest
  
  test "All things JS related" do
    visit demos_path
    assert page.has_selector?('h1#demoIndex'), 'should load the h1 normally'
    find('h1#demoIndex').click
    assert !page.has_selector?('h1#demoIndex'), 'should remove h1 after clicking it'
  end
  
  
end
