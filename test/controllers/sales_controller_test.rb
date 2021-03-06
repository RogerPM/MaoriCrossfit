require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { Product_quantity_id: @sale.Product_quantity_id, client_id: @sale.client_id, date: @sale.date, hour: @sale.hour, iva: @sale.iva, nota: @sale.nota, subscription_id: @sale.subscription_id, subtotal: @sale.subtotal, total_card: @sale.total_card, total_checks: @sale.total_checks, total_effective: @sale.total_effective, user_id: @sale.user_id }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { Product_quantity_id: @sale.Product_quantity_id, client_id: @sale.client_id, date: @sale.date, hour: @sale.hour, iva: @sale.iva, nota: @sale.nota, subscription_id: @sale.subscription_id, subtotal: @sale.subtotal, total_card: @sale.total_card, total_checks: @sale.total_checks, total_effective: @sale.total_effective, user_id: @sale.user_id }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
