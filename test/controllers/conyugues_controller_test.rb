require 'test_helper'

class ConyuguesControllerTest < ActionController::TestCase
  setup do
    @conyugue = conyugues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conyugues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conyugue" do
    assert_difference('Conyugue.count') do
      post :create, conyugue: { apellido1: @conyugue.apellido1, apellido2: @conyugue.apellido2, ci: @conyugue.ci, direccion: @conyugue.direccion, estado: @conyugue.estado, fechaNacimiento: @conyugue.fechaNacimiento, lugarNacimiento: @conyugue.lugarNacimiento, nombre: @conyugue.nombre, telefono: @conyugue.telefono }
    end

    assert_redirected_to conyugue_path(assigns(:conyugue))
  end

  test "should show conyugue" do
    get :show, id: @conyugue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conyugue
    assert_response :success
  end

  test "should update conyugue" do
    patch :update, id: @conyugue, conyugue: { apellido1: @conyugue.apellido1, apellido2: @conyugue.apellido2, ci: @conyugue.ci, direccion: @conyugue.direccion, estado: @conyugue.estado, fechaNacimiento: @conyugue.fechaNacimiento, lugarNacimiento: @conyugue.lugarNacimiento, nombre: @conyugue.nombre, telefono: @conyugue.telefono }
    assert_redirected_to conyugue_path(assigns(:conyugue))
  end

  test "should destroy conyugue" do
    assert_difference('Conyugue.count', -1) do
      delete :destroy, id: @conyugue
    end

    assert_redirected_to conyugues_path
  end
end
