require 'test_helper'

class ShowpinsControllerTest < ActionController::TestCase
  setup do
    @showpin = showpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showpin" do
    assert_difference('Showpin.count') do
      post :create, showpin: { nota: @showpin.nota }
    end

    assert_redirected_to showpin_path(assigns(:showpin))
  end

  test "should show showpin" do
    get :show, id: @showpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showpin
    assert_response :success
  end

  test "should update showpin" do
    patch :update, id: @showpin, showpin: { nota: @showpin.nota }
    assert_redirected_to showpin_path(assigns(:showpin))
  end

  test "should destroy showpin" do
    assert_difference('Showpin.count', -1) do
      delete :destroy, id: @showpin
    end

    assert_redirected_to showpins_path
  end
end
