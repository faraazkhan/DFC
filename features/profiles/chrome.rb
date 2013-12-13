require 'selenium/webdriver'
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Before do
  Capybara.current_driver = :chrome
  Capybara.javascript_driver = :chrome
end
After do |s|
  # Tell Cucumber to quit after this scenario is done - if it failed.
  Cucumber.wants_to_quit = true if s.failed?
end
Constants::DRIVER='selenium'

