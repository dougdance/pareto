require 'test_helper'

class DdRowsControllerTest < ActionController::TestCase
  setup do
    @dd_row = dd_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dd_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dd_row" do
    assert_difference('DdRow.count') do
      post :create, :dd_row => @dd_row.attributes
    end

    assert_redirected_to dd_row_path(assigns(:dd_row))
  end

  test "should show dd_row" do
    get :show, :id => @dd_row.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dd_row.to_param
    assert_response :success
  end

  test "should update dd_row" do
    put :update, :id => @dd_row.to_param, :dd_row => @dd_row.attributes
    assert_redirected_to dd_row_path(assigns(:dd_row))
  end

  test "should destroy dd_row" do
    assert_difference('DdRow.count', -1) do
      delete :destroy, :id => @dd_row.to_param
    end

    assert_redirected_to dd_rows_path
  end
end
