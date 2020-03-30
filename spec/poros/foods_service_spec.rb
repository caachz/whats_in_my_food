require 'rails_helper'

describe 'FoodService' do
  describe 'get_foods' do
    it "makes an api call and stores the responses as food objects", :vcr do
      query_params = "sweet potatoes"
      conn = FoodsService.new
      foods = conn.get_foods(query_params)

      expect(foods.count).to eq(50)
      expect(conn.all_foods.count).to eq(50)
      expect(conn.all_foods.first).to be_a(Food)
    end
  end
end
