require 'test_helper'

class RendicionProductosControllerTest < ActionController::TestCase
  setup do
    @rendicion_producto = rendicion_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rendicion_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rendicion_producto" do
    assert_difference('RendicionProducto.count') do
      post :create, rendicion_producto: { Product_id: @rendicion_producto.Product_id, Voluntario_id: @rendicion_producto.Voluntario_id, cantidad: @rendicion_producto.cantidad, estado: @rendicion_producto.estado, fecha: @rendicion_producto.fecha, hora: @rendicion_producto.hora, observaciones: @rendicion_producto.observaciones }
    end

    assert_redirected_to rendicion_producto_path(assigns(:rendicion_producto))
  end

  test "should show rendicion_producto" do
    get :show, id: @rendicion_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rendicion_producto
    assert_response :success
  end

  test "should update rendicion_producto" do
    patch :update, id: @rendicion_producto, rendicion_producto: { Product_id: @rendicion_producto.Product_id, Voluntario_id: @rendicion_producto.Voluntario_id, cantidad: @rendicion_producto.cantidad, estado: @rendicion_producto.estado, fecha: @rendicion_producto.fecha, hora: @rendicion_producto.hora, observaciones: @rendicion_producto.observaciones }
    assert_redirected_to rendicion_producto_path(assigns(:rendicion_producto))
  end

  test "should destroy rendicion_producto" do
    assert_difference('RendicionProducto.count', -1) do
      delete :destroy, id: @rendicion_producto
    end

    assert_redirected_to rendicion_productos_path
  end
end
