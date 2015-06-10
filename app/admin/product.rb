ActiveAdmin.register Product do
	index do
		selectable_column
		id_column
		column :title
		column :price
		column :color
		column :description
		column :category
		actions
	end

	show do
		attributes_table do
			row :id
			row :title
			row :price
			row :color
			row :description
			row :category
		end
		panel 'Images' do
			table_for product.product_images do
				column :title
				column :image do |m|
					image_tag(m.image.url(:small))
				end
			end
		end
		panel "Additional Description" do
			table_for product.additional_descriptions do
				column :title
				column :description
			end
		end
		active_admin_comments
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :title
			f.input :price
			f.input :color, as: :string
			f.input :description
			f.input :category
			f.has_many :product_images, allow_destroy: true do |pc|
				pc.input :title
				pc.input :image, as: :file, label: "Image",
						hint: pc.template.image_tag(pc.object.image.url(:small))
			end
			f.has_many :additional_descriptions, allow_destroy: true do |ad|
				ad.input :title
				ad.input :description
			end
		end
		f.actions
	end

	permit_params :title,  :price, :color,
	              :description, :category_id,
	              :product_images_attributes => [:id, :title, :image, :product_id, :_destroy],
								:additional_descriptions_attributes => [:id, :title, :description, :product_id, :_destroy]

end
