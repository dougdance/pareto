require 'test_helper'

class DdStringValuesControllerTest < ActionController::TestCase
  setup do
    @dd_string_value = dd_string_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dd_string_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dd_string_value" do
    assert_difference('DdStringValue.count') do
      post :create, :dd_string_value => @dd_string_value.attributes
    end

    assert_redirected_to dd_string_value_path(assigns(:dd_string_value))
  end

  test "should show dd_string_value" do
    get :show, :id => @dd_string_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dd_string_value.to_param
    assert_response :success
  end

  test "should update dd_string_value" do
    put :update, :id => @dd_string_value.to_param, :dd_string_value => @dd_string_value.attributes
    assert_redirected_to dd_string_value_path(assigns(:dd_string_value))
  end

  test "should destroy dd_string_value" do
    assert_difference('DdStringValue.count', -1) do
      delete :destroy, :id => @dd_string_value.to_param
    end

    assert_redirected_to dd_string_values_path
  end
end
