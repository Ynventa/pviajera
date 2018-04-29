require 'test_helper'

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get document_show_url
    assert_response :success
  end

end
