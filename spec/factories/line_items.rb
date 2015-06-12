FactoryGirl.define do
  factory :line_item do
    quantity 1
    product
    cart
    factory :line_item_qty do
      quantity 2
    end
  end

end
