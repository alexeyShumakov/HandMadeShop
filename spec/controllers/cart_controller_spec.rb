require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #my_cart" do
    it "returns http success" do
      get :my_cart
      expect(response).to have_http_status(:success)
    end
  end

end
