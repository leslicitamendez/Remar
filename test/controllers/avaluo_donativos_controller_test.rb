require 'test_helper'

class AvaluoDonativosControllerTest < ActionController::TestCase
  setup do
    @avaluo_donativo = avaluo_donativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaluo_donativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaluo_donativo" do
    assert_difference('AvaluoDonativo.count') do
      post :create, avaluo_donativo: { montoBs: @avaluo_donativo.montoBs, observacion: @avaluo_donativo.observacion }
    end

    assert_redirected_to avaluo_donativo_path(assigns(:avaluo_donativo))
  end

  test "should show avaluo_donativo" do
    get :show, id: @avaluo_donativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avaluo_donativo
    assert_response :success
  end

  test "should update avaluo_donativo" do
    patch :update, id: @avaluo_donativo, avaluo_donativo: { montoBs: @avaluo_donativo.montoBs, observacion: @avaluo_donativo.observacion }
    assert_redirected_to avaluo_donativo_path(assigns(:avaluo_donativo))
  end

  test "should destroy avaluo_donativo" do
    assert_difference('AvaluoDonativo.count', -1) do
      delete :destroy, id: @avaluo_donativo
    end

    assert_redirected_to avaluo_donativos_path
  end
end
