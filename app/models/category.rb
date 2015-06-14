class Category < ActiveRecord::Base
	has_many :products

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :image, :attachment_presence => true
	validates :title, :body, :presence => true
end
