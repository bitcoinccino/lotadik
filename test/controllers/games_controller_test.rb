require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get lotto" do
    get games_lotto_url
    assert_response :success
  end

end
