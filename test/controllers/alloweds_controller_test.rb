require 'test_helper'

class AllowedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allowed = alloweds(:one)
  end

  test "should get index" do
    get alloweds_url
    assert_response :success
  end

  test "should get new" do
    get new_allowed_url
    assert_response :success
  end

  test "should create allowed" do
    assert_difference('Allowed.count') do
      post alloweds_url, params: { allowed: { email: @allowed.email } }
    end

    assert_redirected_to allowed_url(Allowed.last)
  end

  test "should show allowed" do
    get allowed_url(@allowed)
    assert_response :success
  end

  test "should get edit" do
    get edit_allowed_url(@allowed)
    assert_response :success
  end

  test "should update allowed" do
    patch allowed_url(@allowed), params: { allowed: { email: @allowed.email } }
    assert_redirected_to allowed_url(@allowed)
  end

  test "should destroy allowed" do
    assert_difference('Allowed.count', -1) do
      delete allowed_url(@allowed)
    end

    assert_redirected_to alloweds_url
  end
end
