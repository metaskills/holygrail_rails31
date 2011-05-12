require "test_helper"
require "capybara/rails"

Capybara.default_driver = :webkit
Capybara.server_port = 50420

module ActionDispatch
  
  module Integration
    class Session
      def host
        '127.0.0.1'
      end
      def default_url_options
        { :protocol => https? ? "https" : "http", :host => host, :port => 50420 }
      end
    end
  end
  
  class IntegrationTest
    include Capybara::DSL
  end
  
  
end

