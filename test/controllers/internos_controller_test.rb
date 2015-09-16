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
      post :create, interno: { apellidoMaterno: @interno.apellidoMaterno, apellidoPaterno: @interno.apellidoPaterno, causaInternacion: @interno.causaInternacion, centroAnterior: @interno.centroAnterior, ci: @interno.ci, conyugue: @interno.conyugue, direccion: @interno.direccion, edad: @interno.edad, enfermedades: @interno.enfermedades, estadoCivil: @interno.estadoCivil, estudios: @interno.estudios, fechaDNacimiento: @interno.fechaDNacimiento, fechaIngreso: @interno.fechaIngreso, lugarDNacimiento: @interno.lugarDNacimiento, motivoDRetiro: @interno.motivoDRetiro, nombres: @interno.nombres, numeroDHijos: @interno.numeroDHijos, observaciones: @interno.observaciones, ordenJudicial: @interno.ordenJudicial, profesionUOficio: @interno.profesionUOficio, referencias: @interno.referencias, telefono: @interno.telefono, tiempoDConsumo: @interno.tiempoDConsumo, tiempoEstancia: @interno.tiempoEstancia, zona: @interno.zona }
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
    patch :update, id: @interno, interno: { apellidoMaterno: @interno.apellidoMaterno, apellidoPaterno: @interno.apellidoPaterno, causaInternacion: @interno.causaInternacion, centroAnterior: @interno.centroAnterior, ci: @interno.ci, conyugue: @interno.conyugue, direccion: @interno.direccion, edad: @interno.edad, enfermedades: @interno.enfermedades, estadoCivil: @interno.estadoCivil, estudios: @interno.estudios, fechaDNacimiento: @interno.fechaDNacimiento, fechaIngreso: @interno.fechaIngreso, lugarDNacimiento: @interno.lugarDNacimiento, motivoDRetiro: @interno.motivoDRetiro, nombres: @interno.nombres, numeroDHijos: @interno.numeroDHijos, observaciones: @interno.observaciones, ordenJudicial: @interno.ordenJudicial, profesionUOficio: @interno.profesionUOficio, referencias: @interno.referencias, telefono: @interno.telefono, tiempoDConsumo: @interno.tiempoDConsumo, tiempoEstancia: @interno.tiempoEstancia, zona: @interno.zona }
    assert_redirected_to interno_path(assigns(:interno))
  end

  test "should destroy interno" do
    assert_difference('Interno.count', -1) do
      delete :destroy, id: @interno
    end

    assert_redirected_to internos_path
  end
end
