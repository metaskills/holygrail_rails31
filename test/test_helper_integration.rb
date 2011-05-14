require "test_helper"
require "capybara/rails"

Capybara.default_driver = :webkit
Capybara.server_port = 50420

module ActionDispatch
  
  # If you want to be persnikity about host/port matching backend webkit_server.
  module Integration
    class Session
      def host
        '127.0.0.1'
      end
      def default_url_options
        { :protocol => https? ? "https" : "http", :host => host, :port => Capybara.server_port }
      end
    end
  end
  
  class IntegrationTest
    include Capybara::DSL
  end  
  
end

# If you want to use transitional fixtures and force all threads to 1 DB connection.
class ActiveRecord::Base
  def self.connection
    @@shared_connection ||= retrieve_connection
  end
end

