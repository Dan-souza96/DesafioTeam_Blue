require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'pry'
require 'site_prism'
include RSpec::Matchers
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30)
  end
  RSpec.configure do |config|
    config.include Capybara::DSL
    config.include Capybara::RSpecMatchers
  end
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://inm-test-app.herokuapp.com/'
    config.default_max_wait_time = 30
  end

  