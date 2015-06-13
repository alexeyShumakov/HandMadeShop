require 'rails_helper'

RSpec.describe LineItemsController, type: :controller do

  let(:product) {create(:product)}
  let(:cart) {create(:cart)}

  describe "GET #index" do
    it "returns xhr success" do
      xhr :get, :index
      expect(response).to be_success
    end
  end

  describe "POST #create" do

    it "returns xhr success" do
      xhr :post, :create, {product_id: product.id}
      expect(response).to be_success
    end


    it 'create new line_item' do
      xhr :post, :create, {product_id: product.id}, {cart_id: nil}
      expect(assigns(:line_item)).to be_a(LineItem)
		end

  end

  describe "POST #destroy" do
    it 'destroy line_item' do
      cart = create(:cart_with_line_items)
      expect {
        xhr :delete, :destroy, {id: cart.line_items.first.id}, {cart_id: cart.id}
      }.to change(LineItem, :count).by(-1)
    end
  end

  describe "PUT update" do
    it "update line_item" do
      line_item = create(:line_item_qty)
      cart = create(:cart_with_line_items)
        xhr :put, :update, {id: cart.line_items.first.id,
                            line_item: {quantity: line_item.quantity}},
            {cart_id: cart.id}
      cart.line_items.first.reload
      expect(cart.line_items.first.quantity).to eq(line_item.quantity)
    end
  end

end
