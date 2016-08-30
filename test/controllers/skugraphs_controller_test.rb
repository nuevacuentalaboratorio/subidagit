require 'test_helper'

class SkugraphsControllerTest < ActionController::TestCase
  setup do
    @skugraph = skugraphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skugraphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skugraph" do
    assert_difference('Skugraph.count') do
      post :create, skugraph: { sku: @skugraph.sku, velocidad: @skugraph.velocidad }
    end

    assert_redirected_to skugraph_path(assigns(:skugraph))
  end

  test "should show skugraph" do
    get :show, id: @skugraph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skugraph
    assert_response :success
  end

  test "should update skugraph" do
    patch :update, id: @skugraph, skugraph: { sku: @skugraph.sku, velocidad: @skugraph.velocidad }
    assert_redirected_to skugraph_path(assigns(:skugraph))
  end

  test "should destroy skugraph" do
    assert_difference('Skugraph.count', -1) do
      delete :destroy, id: @skugraph
    end

    assert_redirected_to skugraphs_path
  end
end
