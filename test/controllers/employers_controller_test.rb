require "test_helper"

class EmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employers_index_url
    assert_response :success
  end
end
