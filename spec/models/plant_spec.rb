require 'rails_helper'

RSpec.describe Plant, type: :model do
  let!(:plant) { Plant.new(name: "Aloe", image: "./images/aloe.jpg", price: 15.99) }

  describe '#name' do
    it 'returns the plant\'s name' do
      expect(plant.name).to eq('Aloe')
    end
  end

  describe '#image' do
    it 'returns the plant\'s last name' do
      expect(plant.image).to eq('./images/aloe.jpg')
    end
  end

  describe '#price' do
    it 'returns the plant\'s price' do
      expect(plant.price).to eq(15.99)
    end
  end
end
