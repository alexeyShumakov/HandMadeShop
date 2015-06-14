require 'rails_helper'

RSpec.describe AdditionalDescription, type: :model do
	describe 'validation' do
		let(:model) {build(:additional_description)}

		it 'valid model' do
			expect(model).to be_valid
		end
		it 'title presence validation' do
			model.title = nil
			expect(model).not_to be_valid
		end

		it 'description prsence validation' do
			model.description = nil
			expect(model).not_to be_valid
		end
	end
end
