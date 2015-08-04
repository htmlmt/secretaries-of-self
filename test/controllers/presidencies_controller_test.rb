require 'test_helper'

class PresidenciesControllerTest < ActionController::TestCase
  setup do
    @presidency = presidencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presidencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presidency" do
    assert_difference('Presidency.count') do
      post :create, presidency: { cabinet_id: @presidency.cabinet_id }
    end

    assert_redirected_to presidency_path(assigns(:presidency))
  end

  test "should show presidency" do
    get :show, id: @presidency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presidency
    assert_response :success
  end

  test "should update presidency" do
    patch :update, id: @presidency, presidency: { cabinet_id: @presidency.cabinet_id }
    assert_redirected_to presidency_path(assigns(:presidency))
  end

  test "should destroy presidency" do
    assert_difference('Presidency.count', -1) do
      delete :destroy, id: @presidency
    end

    assert_redirected_to presidencies_path
  end
end
