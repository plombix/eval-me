require 'test_helper'

class EvalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eval = evals(:one)
  end

  test "should get index" do
    get evals_url
    assert_response :success
  end

  test "should get new" do
    get new_eval_url
    assert_response :success
  end

  test "should create eval" do
    assert_difference('Eval.count') do
      post evals_url, params: { eval: { intro: @eval.intro, name: @eval.name } }
    end

    assert_redirected_to eval_url(Eval.last)
  end

  test "should show eval" do
    get eval_url(@eval)
    assert_response :success
  end

  test "should get edit" do
    get edit_eval_url(@eval)
    assert_response :success
  end

  test "should update eval" do
    patch eval_url(@eval), params: { eval: { intro: @eval.intro, name: @eval.name } }
    assert_redirected_to eval_url(@eval)
  end

  test "should destroy eval" do
    assert_difference('Eval.count', -1) do
      delete eval_url(@eval)
    end

    assert_redirected_to evals_url
  end
end
