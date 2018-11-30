require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get therapist" do
    get reports_therapist_url
    assert_response :success
  end

end
