require 'rails_helper'

RSpec.describe Cart, type: :model do
	let(:cart) {create(:cart)}
	let(:product_1) {create(:product)}
	let(:product_2) {create(:product)}
	describe 'instance methods' do
		it 'return total qty' do
			cart.add_product(product_1.id)
			cart.add_product(product_2.id)
			cart.add_product(product_2.id)
			expect(cart.total_quantity).to eq(3)
		end
		it 'return total price' do
			cart.add_product(product_1.id)
			cart.add_product(product_2.id)
			cart.add_product(product_2.id)
			expect(cart.total_price).to eq(product_1.price + product_2.price * 2)
		end
		it 'method "add_product" create line item' do
			cart.add_product(product_1.id)
			cart.add_product(product_1.id)
			cart.save
			expect(cart.line_items).to eq(LineItem.all)
		end
	end
end
