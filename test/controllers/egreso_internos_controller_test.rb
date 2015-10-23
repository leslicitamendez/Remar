require 'test_helper'

class EgresoInternosControllerTest < ActionController::TestCase
  setup do
    @egreso_interno = egreso_internos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egreso_internos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egreso_interno" do
    assert_difference('EgresoInterno.count') do
      post :create, egreso_interno: { concepto: @egreso_interno.concepto, egreso_id: @egreso_interno.egreso_id, fecha: @egreso_interno.fecha, interno_id: @egreso_interno.interno_id, monto: @egreso_interno.monto, observaciones: @egreso_interno.observaciones }
    end

    assert_redirected_to egreso_interno_path(assigns(:egreso_interno))
  end

  test "should show egreso_interno" do
    get :show, id: @egreso_interno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egreso_interno
    assert_response :success
  end

  test "should update egreso_interno" do
    patch :update, id: @egreso_interno, egreso_interno: { concepto: @egreso_interno.concepto, egreso_id: @egreso_interno.egreso_id, fecha: @egreso_interno.fecha, interno_id: @egreso_interno.interno_id, monto: @egreso_interno.monto, observaciones: @egreso_interno.observaciones }
    assert_redirected_to egreso_interno_path(assigns(:egreso_interno))
  end

  test "should destroy egreso_interno" do
    assert_difference('EgresoInterno.count', -1) do
      delete :destroy, id: @egreso_interno
    end

    assert_redirected_to egreso_internos_path
  end
end
