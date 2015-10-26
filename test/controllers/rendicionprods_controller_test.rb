require 'test_helper'

class RendicionprodsControllerTest < ActionController::TestCase
  setup do
    @rendicionprod = rendicionprods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rendicionprods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rendicionprod" do
    assert_difference('Rendicionprod.count') do
      post :create, rendicionprod: { cantidad: @rendicionprod.cantidad, entregaprod_id: @rendicionprod.entregaprod_id, estado: @rendicionprod.estado, fecha: @rendicionprod.fecha, hora: @rendicionprod.hora, observaciones: @rendicionprod.observaciones }
    end

    assert_redirected_to rendicionprod_path(assigns(:rendicionprod))
  end

  test "should show rendicionprod" do
    get :show, id: @rendicionprod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rendicionprod
    assert_response :success
  end

  test "should update rendicionprod" do
    patch :update, id: @rendicionprod, rendicionprod: { cantidad: @rendicionprod.cantidad, entregaprod_id: @rendicionprod.entregaprod_id, estado: @rendicionprod.estado, fecha: @rendicionprod.fecha, hora: @rendicionprod.hora, observaciones: @rendicionprod.observaciones }
    assert_redirected_to rendicionprod_path(assigns(:rendicionprod))
  end

  test "should destroy rendicionprod" do
    assert_difference('Rendicionprod.count', -1) do
      delete :destroy, id: @rendicionprod
    end

    assert_redirected_to rendicionprods_path
  end
end
