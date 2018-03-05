require 'test_helper'

class ClientControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_index_url
    assert_response :success
  end

  test "should get show" do
    get client_show_url
    assert_response :success
  end

end
