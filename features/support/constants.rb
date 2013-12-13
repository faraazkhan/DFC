module Constants
  support_directory ||= File.dirname(__FILE__)
  %w[PAGES ENVIRONMENTS SELECTORS SETTINGS].each do |constant|
    file = File.join(support_directory, 'config', "#{constant.downcase}.yml")
    const_set(constant, YAML::load(File.open(file)))
  end
  begin
    ENVIRONMENT = ENV['ENVIRONMENT'] || SETTINGS['DEFAULT_ENVIRONMENT'] || ENVIRONMENTS.keys.first
  rescue
    no_environment_setup_error = <<-ERROR
    Oops it looks you have not set up an Environment yet!!
    Go into 'features/support/config/environments.yml' and add your environments their. For example:
    Production: 'http://www.medicare.gov'
    QA: 'http://qa.medicare.gov'
    By default, the automation framework runs in the first environment from your list. 
    In the example, above it would be 'Production', but you can set a different default environment to run your tests cases in by going to
    'features/support/config/settings.yml' and adding a line as such:
    DEFAULT_ENVIRONMENT: 'QA'
    To run this test case in a different environment than your default environment, pass an environment variable to the command like
    ENVIRONMENT='staging' cucumber
    ERROR
    raise no_environment_setup_error
  end
  CONSTANTS_DEFINED = true if PAGES && ENVIRONMENTS && SELECTORS && ENVIRONMENT
end
World(Constants)

