require 'test_helper'

class VentaunidadsControllerTest < ActionController::TestCase
  setup do
    @ventaunidad = ventaunidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ventaunidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ventaunidad" do
    assert_difference('Ventaunidad.count') do
      post :create, ventaunidad: { mes: @ventaunidad.mes, valor: @ventaunidad.valor }
    end

    assert_redirected_to ventaunidad_path(assigns(:ventaunidad))
  end

  test "should show ventaunidad" do
    get :show, id: @ventaunidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ventaunidad
    assert_response :success
  end

  test "should update ventaunidad" do
    patch :update, id: @ventaunidad, ventaunidad: { mes: @ventaunidad.mes, valor: @ventaunidad.valor }
    assert_redirected_to ventaunidad_path(assigns(:ventaunidad))
  end

  test "should destroy ventaunidad" do
    assert_difference('Ventaunidad.count', -1) do
      delete :destroy, id: @ventaunidad
    end

    assert_redirected_to ventaunidads_path
  end
end
