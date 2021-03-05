require 'test_helper'

class User::LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_languages_index_url
    assert_response :success
  end

  test "should get create" do
    get user_languages_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_languages_destroy_url
    assert_response :success
  end

end
