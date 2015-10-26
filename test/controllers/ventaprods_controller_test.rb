require 'test_helper'

class VentaprodsControllerTest < ActionController::TestCase
  setup do
    @ventaprod = ventaprods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ventaprods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ventaprod" do
    assert_difference('Ventaprod.count') do
      post :create, ventaprod: { cantidad: @ventaprod.cantidad, entregaprod_id: @ventaprod.entregaprod_id, estado: @ventaprod.estado, fecha: @ventaprod.fecha, observaciones: @ventaprod.observaciones, precioUnidad: @ventaprod.precioUnidad, rendicionprod_id: @ventaprod.rendicionprod_id }
    end

    assert_redirected_to ventaprod_path(assigns(:ventaprod))
  end

  test "should show ventaprod" do
    get :show, id: @ventaprod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ventaprod
    assert_response :success
  end

  test "should update ventaprod" do
    patch :update, id: @ventaprod, ventaprod: { cantidad: @ventaprod.cantidad, entregaprod_id: @ventaprod.entregaprod_id, estado: @ventaprod.estado, fecha: @ventaprod.fecha, observaciones: @ventaprod.observaciones, precioUnidad: @ventaprod.precioUnidad, rendicionprod_id: @ventaprod.rendicionprod_id }
    assert_redirected_to ventaprod_path(assigns(:ventaprod))
  end

  test "should destroy ventaprod" do
    assert_difference('Ventaprod.count', -1) do
      delete :destroy, id: @ventaprod
    end

    assert_redirected_to ventaprods_path
  end
end
