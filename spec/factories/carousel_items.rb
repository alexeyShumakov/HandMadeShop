FactoryGirl.define do
  factory :carousel_item do
    title "MyString"
    description "MyText"
    image { fixture_file_upload(Rails.root.join('spec/fixtures/test_img.png'), 'image/png') }
  end

end
