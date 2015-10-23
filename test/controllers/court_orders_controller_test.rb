require 'test_helper'

class CourtOrdersControllerTest < ActionController::TestCase
  setup do
    @court_order = court_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:court_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create court_order" do
    assert_difference('CourtOrder.count') do
      post :create, court_order: { descripcion: @court_order.descripcion, estado: @court_order.estado, interno_id: @court_order.interno_id }
    end

    assert_redirected_to court_order_path(assigns(:court_order))
  end

  test "should show court_order" do
    get :show, id: @court_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @court_order
    assert_response :success
  end

  test "should update court_order" do
    patch :update, id: @court_order, court_order: { descripcion: @court_order.descripcion, estado: @court_order.estado, interno_id: @court_order.interno_id }
    assert_redirected_to court_order_path(assigns(:court_order))
  end

  test "should destroy court_order" do
    assert_difference('CourtOrder.count', -1) do
      delete :destroy, id: @court_order
    end

    assert_redirected_to court_orders_path
  end
end
