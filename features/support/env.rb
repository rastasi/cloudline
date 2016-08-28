require 'cucumber/rails'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'

Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

ActionController::Base.allow_rescue = false
Cucumber::Rails::Database.javascript_strategy = :truncation

