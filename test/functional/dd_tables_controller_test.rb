require 'test_helper'

class DdTablesControllerTest < ActionController::TestCase
  setup do
    @dd_table = dd_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dd_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dd_table" do
    assert_difference('DdTable.count') do
      post :create, :dd_table => @dd_table.attributes
    end

    assert_redirected_to dd_table_path(assigns(:dd_table))
  end

  test "should show dd_table" do
    get :show, :id => @dd_table.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dd_table.to_param
    assert_response :success
  end

  test "should update dd_table" do
    put :update, :id => @dd_table.to_param, :dd_table => @dd_table.attributes
    assert_redirected_to dd_table_path(assigns(:dd_table))
  end

  test "should destroy dd_table" do
    assert_difference('DdTable.count', -1) do
      delete :destroy, :id => @dd_table.to_param
    end

    assert_redirected_to dd_tables_path
  end
end
