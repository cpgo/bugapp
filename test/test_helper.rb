require "minitest/autorun"
require "minitest/capybara"
require "minitest/reporters"
require "./boot"
require_relative "capybara_test_case"

reporter_options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]
Capybara.app = App
