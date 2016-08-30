require 'test_helper'

class OperacionsControllerTest < ActionController::TestCase
  setup do
    @operacion = operacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operacion" do
    assert_difference('Operacion.count') do
      post :create, operacion: { nombre: @operacion.nombre }
    end

    assert_redirected_to operacion_path(assigns(:operacion))
  end

  test "should show operacion" do
    get :show, id: @operacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operacion
    assert_response :success
  end

  test "should update operacion" do
    patch :update, id: @operacion, operacion: { nombre: @operacion.nombre }
    assert_redirected_to operacion_path(assigns(:operacion))
  end

  test "should destroy operacion" do
    assert_difference('Operacion.count', -1) do
      delete :destroy, id: @operacion
    end

    assert_redirected_to operacions_path
  end
end
