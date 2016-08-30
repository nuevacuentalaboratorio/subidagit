require 'test_helper'

class BrandteamsControllerTest < ActionController::TestCase
  setup do
    @brandteam = brandteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brandteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brandteam" do
    assert_difference('Brandteam.count') do
      post :create, brandteam: { cargo: @brandteam.cargo, email: @brandteam.email, empresa: @brandteam.empresa, nombre: @brandteam.nombre, telefono: @brandteam.telefono }
    end

    assert_redirected_to brandteam_path(assigns(:brandteam))
  end

  test "should show brandteam" do
    get :show, id: @brandteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brandteam
    assert_response :success
  end

  test "should update brandteam" do
    patch :update, id: @brandteam, brandteam: { cargo: @brandteam.cargo, email: @brandteam.email, empresa: @brandteam.empresa, nombre: @brandteam.nombre, telefono: @brandteam.telefono }
    assert_redirected_to brandteam_path(assigns(:brandteam))
  end

  test "should destroy brandteam" do
    assert_difference('Brandteam.count', -1) do
      delete :destroy, id: @brandteam
    end

    assert_redirected_to brandteams_path
  end
end
