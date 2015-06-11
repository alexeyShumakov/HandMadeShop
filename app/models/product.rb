class Product < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_title, against: :title,
                  using: {tsearch: {prefix: true}}
  paginates_per 3
  belongs_to :category
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images, :allow_destroy => true

  has_many :additional_descriptions, dependent: :destroy
  accepts_nested_attributes_for :additional_descriptions, :allow_destroy => true
end
