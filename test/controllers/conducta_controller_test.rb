require 'test_helper'

class ConductaControllerTest < ActionController::TestCase
  setup do
    @conductum = conducta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conducta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conductum" do
    assert_difference('Conductum.count') do
      post :create, conductum: { descripcion: @conductum.descripcion, estado: @conductum.estado, fecha: @conductum.fecha, tipoConducta: @conductum.tipoConducta }
    end

    assert_redirected_to conductum_path(assigns(:conductum))
  end

  test "should show conductum" do
    get :show, id: @conductum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conductum
    assert_response :success
  end

  test "should update conductum" do
    patch :update, id: @conductum, conductum: { descripcion: @conductum.descripcion, estado: @conductum.estado, fecha: @conductum.fecha, tipoConducta: @conductum.tipoConducta }
    assert_redirected_to conductum_path(assigns(:conductum))
  end

  test "should destroy conductum" do
    assert_difference('Conductum.count', -1) do
      delete :destroy, id: @conductum
    end

    assert_redirected_to conducta_path
  end
end
