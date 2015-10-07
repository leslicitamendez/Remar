require 'test_helper'

class EntregaProductosControllerTest < ActionController::TestCase
  setup do
    @entrega_producto = entrega_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrega_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrega_producto" do
    assert_difference('EntregaProducto.count') do
      post :create, entrega_producto: { cantidad: @entrega_producto.cantidad, estado: @entrega_producto.estado, fecha: @entrega_producto.fecha, hora: @entrega_producto.hora, product_id: @entrega_producto.product_id, voluntario_id: @entrega_producto.voluntario_id }
    end

    assert_redirected_to entrega_producto_path(assigns(:entrega_producto))
  end

  test "should show entrega_producto" do
    get :show, id: @entrega_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrega_producto
    assert_response :success
  end

  test "should update entrega_producto" do
    patch :update, id: @entrega_producto, entrega_producto: { cantidad: @entrega_producto.cantidad, estado: @entrega_producto.estado, fecha: @entrega_producto.fecha, hora: @entrega_producto.hora, product_id: @entrega_producto.product_id, voluntario_id: @entrega_producto.voluntario_id }
    assert_redirected_to entrega_producto_path(assigns(:entrega_producto))
  end

  test "should destroy entrega_producto" do
    assert_difference('EntregaProducto.count', -1) do
      delete :destroy, id: @entrega_producto
    end

    assert_redirected_to entrega_productos_path
  end
end
