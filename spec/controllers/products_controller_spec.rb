require 'rails_helper'


RSpec.describe ProductsController, type: :controller do
	let (:product_1) {create(:product)}
	let (:product_2) {create(:product)}
	describe "GET search" do
		context 'when keyword is empty' do
			it "assign search @categories" do
				get :search, {search: ''}
				expect(assigns(:products)).to eq([product_1, product_2])
			end
		end

		context 'when keyword is to short' do
			it "assign search @categories" do
				get :search, {search: '1'}
				expect(assigns(:products)).to eq([product_1, product_2])
			end
		end
		it 'find correct results' do
			product_3 = create(:product, title: 'title')
			product_4 = create(:product, title: 'tit')
			get :search, {search: 'tit'}
			expect(assigns(:products)).to eq([product_3, product_4])
		end
	end
end
