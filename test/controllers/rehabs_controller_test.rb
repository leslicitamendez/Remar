require 'test_helper'

class RehabsControllerTest < ActionController::TestCase
  setup do
    @rehab = rehabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rehabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rehab" do
    assert_difference('Rehab.count') do
      post :create, rehab: { causaInternacion: @rehab.causaInternacion, centroAnterior: @rehab.centroAnterior, enfermedades: @rehab.enfermedades, interno_id: @rehab.interno_id, motivoRetiro: @rehab.motivoRetiro, nombreCentre: @rehab.nombreCentre, observaciones: @rehab.observaciones, tiempoConsumo: @rehab.tiempoConsumo, tiempoEstancia: @rehab.tiempoEstancia }
    end

    assert_redirected_to rehab_path(assigns(:rehab))
  end

  test "should show rehab" do
    get :show, id: @rehab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rehab
    assert_response :success
  end

  test "should update rehab" do
    patch :update, id: @rehab, rehab: { causaInternacion: @rehab.causaInternacion, centroAnterior: @rehab.centroAnterior, enfermedades: @rehab.enfermedades, interno_id: @rehab.interno_id, motivoRetiro: @rehab.motivoRetiro, nombreCentre: @rehab.nombreCentre, observaciones: @rehab.observaciones, tiempoConsumo: @rehab.tiempoConsumo, tiempoEstancia: @rehab.tiempoEstancia }
    assert_redirected_to rehab_path(assigns(:rehab))
  end

  test "should destroy rehab" do
    assert_difference('Rehab.count', -1) do
      delete :destroy, id: @rehab
    end

    assert_redirected_to rehabs_path
  end
end
