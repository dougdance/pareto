require 'test_helper'

class DdFkColumnsControllerTest < ActionController::TestCase
  setup do
    @dd_fk_column = dd_fk_columns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dd_fk_columns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dd_fk_column" do
    assert_difference('DdFkColumn.count') do
      post :create, :dd_fk_column => @dd_fk_column.attributes
    end

    assert_redirected_to dd_fk_column_path(assigns(:dd_fk_column))
  end

  test "should show dd_fk_column" do
    get :show, :id => @dd_fk_column.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dd_fk_column.to_param
    assert_response :success
  end

  test "should update dd_fk_column" do
    put :update, :id => @dd_fk_column.to_param, :dd_fk_column => @dd_fk_column.attributes
    assert_redirected_to dd_fk_column_path(assigns(:dd_fk_column))
  end

  test "should destroy dd_fk_column" do
    assert_difference('DdFkColumn.count', -1) do
      delete :destroy, :id => @dd_fk_column.to_param
    end

    assert_redirected_to dd_fk_columns_path
  end
end
