require 'test_helper'

class GastoInternosControllerTest < ActionController::TestCase
  setup do
    @gasto_interno = gasto_internos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gasto_internos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gasto_interno" do
    assert_difference('GastoInterno.count') do
      post :create, gasto_interno: { concepto: @gasto_interno.concepto, descripcion: @gasto_interno.descripcion, fecha: @gasto_interno.fecha, interno_id: @gasto_interno.interno_id, monto: @gasto_interno.monto }
    end

    assert_redirected_to gasto_interno_path(assigns(:gasto_interno))
  end

  test "should show gasto_interno" do
    get :show, id: @gasto_interno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gasto_interno
    assert_response :success
  end

  test "should update gasto_interno" do
    patch :update, id: @gasto_interno, gasto_interno: { concepto: @gasto_interno.concepto, descripcion: @gasto_interno.descripcion, fecha: @gasto_interno.fecha, interno_id: @gasto_interno.interno_id, monto: @gasto_interno.monto }
    assert_redirected_to gasto_interno_path(assigns(:gasto_interno))
  end

  test "should destroy gasto_interno" do
    assert_difference('GastoInterno.count', -1) do
      delete :destroy, id: @gasto_interno
    end

    assert_redirected_to gasto_internos_path
  end
end
