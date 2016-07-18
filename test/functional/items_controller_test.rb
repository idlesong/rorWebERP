require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:sct3258t)
    @update = {
      :name => '数字对讲机系带信号处理芯片',
      :partNo => 'SCT3928',
      :package => 'BGA144',
      :price => 30
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, :item => @update
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    #put :update, id: @item, item: { imageURL: @item.imageURL, name: @item.name, package: @item.package, partNo: @item.partNo, price: @item.price }
    put :update,:id => @item.to_param, :itme => @update
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
