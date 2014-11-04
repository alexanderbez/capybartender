require 'selenium/webdriver'
require 'capybara'

module Capybartender
  module Serve

    def firefox_driver!(name, options={})
      Capybara.register_driver name.to_sym do |app|
        profile = Selenium::WebDriver::Firefox::Profile.new
        profile["network.http.use-cache"] = options.fetch(:use_cache, false)
        profile["focusmanager.testmode"] = options.fetch(:test_mode, true)

        client = Selenium::WebDriver::Remote::Http::Default.new
        client.timeout = options.fetch(:timeout, 120)

        Capybara::Selenium::Driver.new(
          app,
          :browser     => :firefox,
          :http_client => client,
          :profile     => profile
        )
      end
    end
    module_function :firefox_driver!

    def chrome_driver!(name, options={})
      Capybara.register_driver name.to_sym do |app|
        client = Selenium::WebDriver::Remote::Http::Default.new
        client.timeout = options.fetch(:timeout, 120)

        Capybara::Selenium::Driver.new(
          app,
          :browser     => :chrome,
          :http_client => client
        )
      end
    end
    module_function :chrome_driver!

  end # module Serve
end # module Capybartender
