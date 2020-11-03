require 'test_helper'

class OnlytipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get onlytips_index_url
    assert_response :success
  end

end
