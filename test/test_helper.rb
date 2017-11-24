require "minitest/autorun"
require "minitest/reporters"
require "rack/test"
require_relative "../config/boot"

reporter_options = { color: true }
Minitest::Reporters.use! [
  Minitest::Reporters::DefaultReporter.new(reporter_options),
  Minitest::Reporters::JUnitReporter.new("/tmp/test-results")
]
