require 'test_helper'

class SkusControllerTest < ActionController::TestCase
  setup do
    @sku = skus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sku" do
    assert_difference('Sku.count') do
      post :create, sku: { brand: @sku.brand, classification: @sku.classification, cost: @sku.cost, ean: @sku.ean, inventory: @sku.inventory, productid: @sku.productid, retailprice: @sku.retailprice, saleprice: @sku.saleprice, sku: @sku.sku, variant1: @sku.variant1, variant2: @sku.variant2, variant3: @sku.variant3, weight: @sku.weight }
    end

    assert_redirected_to sku_path(assigns(:sku))
  end

  test "should show sku" do
    get :show, id: @sku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sku
    assert_response :success
  end

  test "should update sku" do
    patch :update, id: @sku, sku: { brand: @sku.brand, classification: @sku.classification, cost: @sku.cost, ean: @sku.ean, inventory: @sku.inventory, productid: @sku.productid, retailprice: @sku.retailprice, saleprice: @sku.saleprice, sku: @sku.sku, variant1: @sku.variant1, variant2: @sku.variant2, variant3: @sku.variant3, weight: @sku.weight }
    assert_redirected_to sku_path(assigns(:sku))
  end

  test "should destroy sku" do
    assert_difference('Sku.count', -1) do
      delete :destroy, id: @sku
    end

    assert_redirected_to skus_path
  end
end
