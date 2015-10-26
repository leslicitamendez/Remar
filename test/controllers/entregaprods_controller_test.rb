require 'test_helper'

class EntregaprodsControllerTest < ActionController::TestCase
  setup do
    @entregaprod = entregaprods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entregaprods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entregaprod" do
    assert_difference('Entregaprod.count') do
      post :create, entregaprod: { cantidad: @entregaprod.cantidad, estado: @entregaprod.estado, fecha: @entregaprod.fecha, hora: @entregaprod.hora, observaciones: @entregaprod.observaciones, product_id: @entregaprod.product_id, voluntario_id: @entregaprod.voluntario_id }
    end

    assert_redirected_to entregaprod_path(assigns(:entregaprod))
  end

  test "should show entregaprod" do
    get :show, id: @entregaprod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entregaprod
    assert_response :success
  end

  test "should update entregaprod" do
    patch :update, id: @entregaprod, entregaprod: { cantidad: @entregaprod.cantidad, estado: @entregaprod.estado, fecha: @entregaprod.fecha, hora: @entregaprod.hora, observaciones: @entregaprod.observaciones, product_id: @entregaprod.product_id, voluntario_id: @entregaprod.voluntario_id }
    assert_redirected_to entregaprod_path(assigns(:entregaprod))
  end

  test "should destroy entregaprod" do
    assert_difference('Entregaprod.count', -1) do
      delete :destroy, id: @entregaprod
    end

    assert_redirected_to entregaprods_path
  end
end
