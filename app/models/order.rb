class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	after_create :set_product_price
	def add_item_from_cart(cart)
		cart.line_items.each do |line_item|
			line_item.cart_id = nil
			line_items << line_item
		end
		cart.destroy
	end
	def set_product_price
    self.product_price = line_items.to_a.sum {|item| item.total_price}
	end

	def total_price
		product_price + delivery_price
	end
end
