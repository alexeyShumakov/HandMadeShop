require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	let(:category) { create(:category) }

	describe "GET index" do
		it "assigns @categories" do
			expect(assigns(:categories)) == ([category])
		end
	end

	describe "GET show" do
		it "assigns @category" do
			expect(assigns(:category)) == (category)
		end

	end

end
