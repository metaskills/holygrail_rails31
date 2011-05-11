require "test_helper"
require "capybara/rails"

class ActionDispatch::IntegrationTest
  
  include Capybara
  
  Capybara.default_selector  = :css
  Capybara.default_wait_time = 10
  
  # Capybara.default_driver    = :webkit
  # Capybara.javascript_driver = :webkit
  # Capybara.default_host      = LOCATION.cookie_domain
  # teardown :reset_capybara_sessions!
  
  
  
end

