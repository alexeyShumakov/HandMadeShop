FactoryGirl.define do
  factory :product do
    title "MyString"
		color "MyString"
		description "MyText"
		price "9.99"
    category

    factory :bad_product do
      title nil
      color nil
      description nil
      price 'string'
    end
  end

end
