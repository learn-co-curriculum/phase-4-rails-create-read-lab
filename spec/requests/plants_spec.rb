require 'rails_helper'

RSpec.describe "Plants", type: :request do
  before do
    Plant.create(name: 'Aloe', image: './images/aloe.jpg', price: 15.99)
    Plant.create(name: 'ZZ Plant', image: './images/zz-plant.jpg', price: '25.98')
  end

  describe "routes" do
    it 'does not create unused routes' do
      expect { patch "/plants/1" }.to raise_error(ActionController::RoutingError)
    end
  end

  describe "GET /plants" do
    it 'returns an array of all plants' do
      get '/plants'

      expect(response.body).to include_json([
        { id: a_kind_of(Integer), name: 'Aloe', image: './images/aloe.jpg', price: '15.99' },
        { id: a_kind_of(Integer), name: 'ZZ Plant', image: './images/zz-plant.jpg', price: '25.98' }
      ])
    end
  end

  describe "GET /plants/:id" do
    it 'returns the first plant' do
      get "/plants/#{Plant.first.id}"

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        name: 'Aloe', 
        image: './images/aloe.jpg', 
        price: '15.99'
      })
    end

    it 'returns the second plant' do
      get "/plants/#{Plant.second.id}"

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        name: 'ZZ Plant', 
        image: './images/zz-plant.jpg', 
        price: '25.98'
      })
    end
  end

  describe "POST /plants" do
    let!(:plant_params) { { name: 'Pilea peperomioides', image: './images/pilea.jpg', price: '5.99' } }

    it 'creates a new plant' do
      expect { post '/plants', params: plant_params }.to change(Plant, :count).by(1)
    end

    it 'returns the plant data' do
      post '/plants', params: plant_params

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        name: 'Pilea peperomioides', 
        image: './images/pilea.jpg', 
        price: '5.99'
      })
    end

    it 'returns a status code of 201 (created)' do
      post '/plants', params: plant_params

      expect(response).to have_http_status(:created)
    end
  end

end