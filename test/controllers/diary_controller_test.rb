require 'test_helper'

class DiaryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get diary_new_url
    assert_response :success
  end

  test "should get create" do
    get diary_create_url
    assert_response :success
  end

end
