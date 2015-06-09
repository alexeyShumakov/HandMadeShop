class Category < ActiveRecord::Base
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :title, :body, :presence => true
end
