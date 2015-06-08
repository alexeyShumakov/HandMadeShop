class Category < ActiveRecord::Base
	validates :title, :body, :presence => true
end
