require 'rails_helper'

RSpec.describe Order, type: :model do
	let(:model) {create(:order)}
	let(:bad_model) {build(:bad_order)}
	describe 'vlidation' do
		it "valid values" do
			expect(model).to be_valid
		end
		it "not valid" do
			expect(bad_model).not_to be_valid
		end

	end
end
