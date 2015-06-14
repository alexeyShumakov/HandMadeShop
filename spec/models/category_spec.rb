require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:model) {create(:category)}
  describe 'validation' do
    it 'valid model' do
      expect(model).to be_valid
    end

    it 'presence image' do
      model.image = nil
      expect(model).not_to be_valid
    end

    it 'presence title' do
      model.title = nil
      expect(model).not_to be_valid
    end

  end
end
