require_relative "../test_helper"

class HomeTest < CapybaraTestCase
  def test_root
    visit "/"
    assert_response 200
  end
end
