ActiveAdmin.register Category do
	permit_params :body, :title
	index do
		selectable_column
		id_column
		column :title
		column :body
		column :image do |img|
			image_tag(img.image.url, width: '80')
		end
		actions
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :title
			f.input :body
			f.input :image, :as => :file
		end
		actions
	end

	permit_params :title, :body, :image
end
