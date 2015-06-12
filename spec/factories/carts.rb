FactoryGirl.define do
  factory :cart do
    factory :cart_with_line_items do

      transient do
        line_items_count 5
      end

      after(:create) do |cart, evaluator|
        create_list(:line_item, evaluator.line_items_count, cart: cart)
      end
    end
  end

end
