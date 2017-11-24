require_relative "../test_helper"

class HomeTest < Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    App
  end

  def test_root
    get "my_route/bla"
    assert_equal(last_response.status, 200)
  end
end
