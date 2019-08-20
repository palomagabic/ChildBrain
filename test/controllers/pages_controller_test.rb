require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get signin" do
    get pages_signin_url
    assert_response :success
  end

  test "should get signup" do
    get pages_signup_url
    assert_response :success
  end

  test "should get types" do
    get pages_types_url
    assert_response :success
  end

  test "should get game" do
    get pages_game_url
    assert_response :success
  end

  test "should get invitade" do
    get pages_invitade_url
    assert_response :success
  end

end
