require 'test_helper'

class HistoriaClinicasControllerTest < ActionController::TestCase
  setup do
    @historia_clinica = historia_clinicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historia_clinicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historia_clinica" do
    assert_difference('HistoriaClinica.count') do
      post :create, historia_clinica: { causa_internacion: @historia_clinica.causa_internacion, enfermedades: @historia_clinica.enfermedades, interno_id: @historia_clinica.interno_id, observaciones: @historia_clinica.observaciones }
    end

    assert_redirected_to historia_clinica_path(assigns(:historia_clinica))
  end

  test "should show historia_clinica" do
    get :show, id: @historia_clinica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historia_clinica
    assert_response :success
  end

  test "should update historia_clinica" do
    patch :update, id: @historia_clinica, historia_clinica: { causa_internacion: @historia_clinica.causa_internacion, enfermedades: @historia_clinica.enfermedades, interno_id: @historia_clinica.interno_id, observaciones: @historia_clinica.observaciones }
    assert_redirected_to historia_clinica_path(assigns(:historia_clinica))
  end

  test "should destroy historia_clinica" do
    assert_difference('HistoriaClinica.count', -1) do
      delete :destroy, id: @historia_clinica
    end

    assert_redirected_to historia_clinicas_path
  end
end
