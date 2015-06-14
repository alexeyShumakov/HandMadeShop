FactoryGirl.define do
  factory :order do
    name "MyString"
    city "MyString"
    address "MyString"
    phone "MyString"
    product_price 9.99
    delivery_price 9.99
    status 0

    factory :bad_order do
      name nil
      city nil
      address nil
      phone nil
      product_price 'string'
      delivery_price 'string'
      status 'string'

    end

    factory :public_order_created do
      name "MyString"
      city "MyString"
      address "MyString"
      phone "MyString"
      product_price ''
      delivery_price ''
      status ''
    end
  end
end
