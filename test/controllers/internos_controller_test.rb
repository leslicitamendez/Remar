require 'test_helper'

class InternosControllerTest < ActionController::TestCase
  setup do
    @interno = internos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interno" do
    assert_difference('Interno.count') do
      post :create, interno: { apellido1: @interno.apellido1, apellido2: @interno.apellido2, ci: @interno.ci, direccion: @interno.direccion, estadoCivil: @interno.estadoCivil, estudios: @interno.estudios, fechaIngreso: @interno.fechaIngreso, fechaNacimiento: @interno.fechaNacimiento, lugarNacimiento: @interno.lugarNacimiento, nombre: @interno.nombre, oficio: @interno.oficio, profesion: @interno.profesion, sexo: @interno.sexo, telefono: @interno.telefono, zona: @interno.zona }
    end

    assert_redirected_to interno_path(assigns(:interno))
  end

  test "should show interno" do
    get :show, id: @interno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interno
    assert_response :success
  end

  test "should update interno" do
    patch :update, id: @interno, interno: { apellido1: @interno.apellido1, apellido2: @interno.apellido2, ci: @interno.ci, direccion: @interno.direccion, estadoCivil: @interno.estadoCivil, estudios: @interno.estudios, fechaIngreso: @interno.fechaIngreso, fechaNacimiento: @interno.fechaNacimiento, lugarNacimiento: @interno.lugarNacimiento, nombre: @interno.nombre, oficio: @interno.oficio, profesion: @interno.profesion, sexo: @interno.sexo, telefono: @interno.telefono, zona: @interno.zona }
    assert_redirected_to interno_path(assigns(:interno))
  end

  test "should destroy interno" do
    assert_difference('Interno.count', -1) do
      delete :destroy, id: @interno
    end

    assert_redirected_to internos_path
  end
end
