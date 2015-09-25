require 'test_helper'

class RecepcionDonativosControllerTest < ActionController::TestCase
  setup do
    @recepcion_donativo = recepcion_donativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recepcion_donativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recepcion_donativo" do
    assert_difference('RecepcionDonativo.count') do
      post :create, recepcion_donativo: { articulo: @recepcion_donativo.articulo, cantidad: @recepcion_donativo.cantidad, descripcion: @recepcion_donativo.descripcion, fecha: @recepcion_donativo.fecha, id_voluntario: @recepcion_donativo.id_voluntario, nombreDonante: @recepcion_donativo.nombreDonante }
    end

    assert_redirected_to recepcion_donativo_path(assigns(:recepcion_donativo))
  end

  test "should show recepcion_donativo" do
    get :show, id: @recepcion_donativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recepcion_donativo
    assert_response :success
  end

  test "should update recepcion_donativo" do
    patch :update, id: @recepcion_donativo, recepcion_donativo: { articulo: @recepcion_donativo.articulo, cantidad: @recepcion_donativo.cantidad, descripcion: @recepcion_donativo.descripcion, fecha: @recepcion_donativo.fecha, id_voluntario: @recepcion_donativo.id_voluntario, nombreDonante: @recepcion_donativo.nombreDonante }
    assert_redirected_to recepcion_donativo_path(assigns(:recepcion_donativo))
  end

  test "should destroy recepcion_donativo" do
    assert_difference('RecepcionDonativo.count', -1) do
      delete :destroy, id: @recepcion_donativo
    end

    assert_redirected_to recepcion_donativos_path
  end
end
