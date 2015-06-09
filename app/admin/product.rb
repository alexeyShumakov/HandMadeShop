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

	form  do |f|
		f.inputs do
			f.input :title
			f.input :price
			f.input :color, as: :string
			f.input :description
			f.input :category
		end
		f.actions
	end

	permit_params :title, :price, :color, :description, :category_id

end
