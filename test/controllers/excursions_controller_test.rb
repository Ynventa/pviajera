require 'test_helper'

class ExcursionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excursions_index_url
    assert_response :success
  end

  test "should get show" do
    get excursions_show_url
    assert_response :success
  end

end
