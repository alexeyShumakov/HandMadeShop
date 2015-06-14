FactoryGirl.define do
  factory :product_image do
    title "MyString"
    image { fixture_file_upload(Rails.root.join('spec/fixtures/test_img.png'), 'image/png') }
  end

end
