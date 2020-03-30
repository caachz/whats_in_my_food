require 'rails_helper'

describe 'Food' do
  describe 'initialize' do
    it "supplies the necessary information for the food object" do
      params = {gtinUpc: "728229015529", description: "REAL VEGETABLE CHIPS", brandOwner: "The Hain Celestial Group, Inc.", ingredients: "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA)"}
      food = Food.new(params)

      expect(food.brand_owner).to eq("The Hain Celestial Group, Inc.")
      expect(food.upc_code).to eq("728229015529")
      expect(food.description).to eq("REAL VEGETABLE CHIPS")
      expect(food.ingredients).to eq("A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA)")
    end
  end
end
