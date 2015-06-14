FactoryGirl.define do
  factory :category do
    title "MyString"
    body "MyText"
    image { fixture_file_upload(Rails.root.join('spec/fixtures/test_img.png'), 'image/png') }
  end

end
