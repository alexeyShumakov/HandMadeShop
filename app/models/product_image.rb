class ProductImage < ActiveRecord::Base
  belongs_to :Product
  has_attached_file :image, :styles => { :medium => "500x435>", :small => "120x120>", :thumb => "360X390>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, :attachment_presence => true
  validates :title, presence: true
end
