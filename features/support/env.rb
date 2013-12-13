require 'capybara'
require 'capybara/cucumber'
require 'active_support/all'


require 'capybara/dsl'
require 'rspec'
RSpec.configure do |config|
    config.include Capybara::DSL
  end
Capybara.save_and_open_page_path = File.expand_path(File.join(File.dirname(__FILE__),'../../tmp'))
Capybara.default_wait_time = 2
Capybara.default_driver = :selenium
