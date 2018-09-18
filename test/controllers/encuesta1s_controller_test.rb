require 'test_helper'

class Encuesta1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encuesta1 = encuesta1s(:one)
  end

  test "should get index" do
    get encuesta1s_url
    assert_response :success
  end

  test "should get new" do
    get new_encuesta1_url
    assert_response :success
  end

  test "should create encuesta1" do
    assert_difference('Encuesta1.count') do
      post encuesta1s_url, params: { encuesta1: { encuesta: @encuesta1.encuesta } }
    end

    assert_redirected_to encuesta1_url(Encuesta1.last)
  end

  test "should show encuesta1" do
    get encuesta1_url(@encuesta1)
    assert_response :success
  end

  test "should get edit" do
    get edit_encuesta1_url(@encuesta1)
    assert_response :success
  end

  test "should update encuesta1" do
    patch encuesta1_url(@encuesta1), params: { encuesta1: { encuesta: @encuesta1.encuesta } }
    assert_redirected_to encuesta1_url(@encuesta1)
  end

  test "should destroy encuesta1" do
    assert_difference('Encuesta1.count', -1) do
      delete encuesta1_url(@encuesta1)
    end

    assert_redirected_to encuesta1s_url
  end
end
