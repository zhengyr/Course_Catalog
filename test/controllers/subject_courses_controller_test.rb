require 'test_helper'

class SubjectCoursesControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

end
