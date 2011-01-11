require 'test_helper'

class DdStringColumnsControllerTest < ActionController::TestCase
  setup do
    @dd_string_column = dd_string_columns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dd_string_columns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dd_string_column" do
    assert_difference('DdStringColumn.count') do
      post :create, :dd_string_column => @dd_string_column.attributes
    end

    assert_redirected_to dd_string_column_path(assigns(:dd_string_column))
  end

  test "should show dd_string_column" do
    get :show, :id => @dd_string_column.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dd_string_column.to_param
    assert_response :success
  end

  test "should update dd_string_column" do
    put :update, :id => @dd_string_column.to_param, :dd_string_column => @dd_string_column.attributes
    assert_redirected_to dd_string_column_path(assigns(:dd_string_column))
  end

  test "should destroy dd_string_column" do
    assert_difference('DdStringColumn.count', -1) do
      delete :destroy, :id => @dd_string_column.to_param
    end

    assert_redirected_to dd_string_columns_path
  end
end
