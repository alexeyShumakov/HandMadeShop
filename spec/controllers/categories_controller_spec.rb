require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	let(:category) { create(:category) }

	describe "GET index" do
		it "assigns @categories" do
			expect(assigns(:categories)) == ([category])
		end

		it "assigns @carousel_items" do
			carousel_items = create(:carousel_item)
			expect(assigns(:carousel_items)) == ([carousel_items])
		end
	end

	describe "GET show" do
		it "assigns @category" do
			expect(assigns(:category)) == (category)
		end

	end

end
