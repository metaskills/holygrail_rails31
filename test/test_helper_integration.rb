require "test_helper"
require "capybara/rails"

class ActionDispatch::IntegrationTest
  
  include Capybara::DSL
  
  Capybara.default_driver = :webkit
  
  
  
end

