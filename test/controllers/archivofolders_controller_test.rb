require 'test_helper'

class ArchivofoldersControllerTest < ActionController::TestCase
  setup do
    @archivofolder = archivofolders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivofolders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivofolder" do
    assert_difference('Archivofolder.count') do
      post :create, archivofolder: { autor: @archivofolder.autor, nombre: @archivofolder.nombre }
    end

    assert_redirected_to archivofolder_path(assigns(:archivofolder))
  end

  test "should show archivofolder" do
    get :show, id: @archivofolder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivofolder
    assert_response :success
  end

  test "should update archivofolder" do
    patch :update, id: @archivofolder, archivofolder: { autor: @archivofolder.autor, nombre: @archivofolder.nombre }
    assert_redirected_to archivofolder_path(assigns(:archivofolder))
  end

  test "should destroy archivofolder" do
    assert_difference('Archivofolder.count', -1) do
      delete :destroy, id: @archivofolder
    end

    assert_redirected_to archivofolders_path
  end
end
