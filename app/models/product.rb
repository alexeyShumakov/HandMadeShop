class Product < ActiveRecord::Base
  belongs_to :category
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images, :allow_destroy => true

  has_many :additional_descriptions, dependent: :destroy
  accepts_nested_attributes_for :additional_descriptions, :allow_destroy => true
end
