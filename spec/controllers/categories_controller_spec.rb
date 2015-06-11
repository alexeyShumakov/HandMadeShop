require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	let(:category) { create(:category) }

	describe "GET index" do
		it "assigns @categories" do
			get :index
			expect(assigns(:categories)).to eq([category])
		end

		it "assigns sorted by created_at desc @products" do
			product_1 = create(:product)
			product_2 = create(:product)
			get :index
			expect(assigns(:products)).not_to eq([product_1, product_2])
			expect(assigns(:products)).to eq([product_2, product_1])
		end

		it "assigns sorted by created_at @carousel_items" do
			carousel_item_1 = create(:carousel_item)
			carousel_item_2 = create(:carousel_item)
			get :index
			expect(assigns(:carousel_items)).to eq([carousel_item_2, carousel_item_1])
			expect(assigns(:carousel_items)).to_not eq([carousel_item_1, carousel_item_2])
		end
	end

	describe "GET show" do
		it "assigns @category" do
			get :show, {id: category.id}
			expect(assigns(:category)).to eq(category)
		end

		it "assigns @categories" do
			expect(assigns(:categories)) == ([category])
		end

		it "assigns sorted by created_at @products" do
			product_1 = create(:product)
			product_2 = create(:product)
			get :index
			expect(assigns(:products)).not_to eq([product_1, product_2])
			expect(assigns(:products)).to eq([product_2, product_1])
		end

	end

end
