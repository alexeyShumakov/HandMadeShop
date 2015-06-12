require 'rails_helper'

RSpec.describe LineItem, type: :model do
  describe "test total price" do
    it 'return total price' do
      product = create(:product)
      line_item = create(:line_item, quantity: 2)
      line_item.product = product
      expect(line_item.total_price).to eq(product.price * 2)
		end
  end

end
