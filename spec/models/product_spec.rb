require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:model) {create(:product)}
  let(:bad_model) {build(:bad_product)}
  describe 'vlidation' do
    it "valid values" do
      expect(model).to be_valid
    end
    it "not valid" do
      expect(bad_model).not_to be_valid
    end

  end
end
