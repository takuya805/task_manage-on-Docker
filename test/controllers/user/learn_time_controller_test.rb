require 'test_helper'

class User::LearnTimeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_learn_time_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_learn_time_destroy_url
    assert_response :success
  end

end
