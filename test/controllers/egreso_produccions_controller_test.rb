require 'test_helper'

class EgresoProduccionsControllerTest < ActionController::TestCase
  setup do
    @egreso_produccion = egreso_produccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egreso_produccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egreso_produccion" do
    assert_difference('EgresoProduccion.count') do
      post :create, egreso_produccion: { egreso_id: @egreso_produccion.egreso_id, observaciones: @egreso_produccion.observaciones, produccion_id: @egreso_produccion.produccion_id }
    end

    assert_redirected_to egreso_produccion_path(assigns(:egreso_produccion))
  end

  test "should show egreso_produccion" do
    get :show, id: @egreso_produccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egreso_produccion
    assert_response :success
  end

  test "should update egreso_produccion" do
    patch :update, id: @egreso_produccion, egreso_produccion: { egreso_id: @egreso_produccion.egreso_id, observaciones: @egreso_produccion.observaciones, produccion_id: @egreso_produccion.produccion_id }
    assert_redirected_to egreso_produccion_path(assigns(:egreso_produccion))
  end

  test "should destroy egreso_produccion" do
    assert_difference('EgresoProduccion.count', -1) do
      delete :destroy, id: @egreso_produccion
    end

    assert_redirected_to egreso_produccions_path
  end
end
