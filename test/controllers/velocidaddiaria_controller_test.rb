require 'test_helper'

class VelocidaddiariaControllerTest < ActionController::TestCase
  setup do
    @velocidaddiarium = velocidaddiaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:velocidaddiaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create velocidaddiarium" do
    assert_difference('Velocidaddiarium.count') do
      post :create, velocidaddiarium: { sku: @velocidaddiarium.sku, velocidad: @velocidaddiarium.velocidad }
    end

    assert_redirected_to velocidaddiarium_path(assigns(:velocidaddiarium))
  end

  test "should show velocidaddiarium" do
    get :show, id: @velocidaddiarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @velocidaddiarium
    assert_response :success
  end

  test "should update velocidaddiarium" do
    patch :update, id: @velocidaddiarium, velocidaddiarium: { sku: @velocidaddiarium.sku, velocidad: @velocidaddiarium.velocidad }
    assert_redirected_to velocidaddiarium_path(assigns(:velocidaddiarium))
  end

  test "should destroy velocidaddiarium" do
    assert_difference('Velocidaddiarium.count', -1) do
      delete :destroy, id: @velocidaddiarium
    end

    assert_redirected_to velocidaddiaria_path
  end
end
