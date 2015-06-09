ActiveAdmin.register CarouselItem do

	index as: :grid do |ci|
		link_to image_tag(ci.image.url, width: '100'), admin_carousel_item_path(ci)
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :title
			f.input :description
			f.input :image, :as => :file
		end
		actions
	end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
