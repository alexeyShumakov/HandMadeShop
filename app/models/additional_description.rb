class AdditionalDescription < ActiveRecord::Base
  belongs_to :product
  validates :description, presence: true
  validates :title, presence: true
end
