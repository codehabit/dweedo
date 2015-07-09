require 'rubygems'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'capybara/rails'
require 'factory_girl'
require 'pry'
require 'rspec/rails'
require 'shoulda/matchers'
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Capybara.javascript_driver = :webkit
# Capybara.ignore_hidden_elements = true
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.infer_base_class_for_anonymous_controllers = true
  config.include ActionDispatch::TestProcess
  config.include Rails.application.routes.url_helpers
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end
  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed

  config.after :each do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end
end
