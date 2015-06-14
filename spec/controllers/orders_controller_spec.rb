require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let(:valid_session) { {cart_id: create(:cart_with_line_items).id} }
  describe "GET #new" do
    it "assigns a new order as @order" do
      get :new, {}, valid_session
      expect(assigns(:order)).to be_a_new(Order)
    end
    it "invalid session redirect to root" do
      get :new, {}, {}
      expect(response).to redirect_to(root_path)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Order" do
        expect {
          post :create, {order: attributes_for(:public_order_created)}, valid_session
        }.to change(Order, :count).by(1)
      end

      it "assigns a newly created order as @order" do
        post :create, {:order => attributes_for(:public_order_created)}, valid_session
        expect(assigns(:order)).to be_a(Order)
        expect(assigns(:order)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved order as @order" do
        post :create, {:order => attributes_for(:bad_order)}, valid_session
        expect(assigns(:order)).to be_a_new(Order)
      end

      it "re-renders the 'new' template" do
        post :create, {:order => attributes_for(:bad_order)}, valid_session
        expect(response).to render_template("new")
      end
    end
  end
  describe 'GET cart_rerender' do
    it "returns xhr success" do
      xhr :get, :cart_rerender,{}, valid_session
      expect(response).to be_success
    end
  end
end
