require "capybara/minitest"

class CapybaraTestCase < Minitest::Test
  include Rack::Test::Methods
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
