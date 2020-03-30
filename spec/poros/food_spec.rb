require 'rails_helper'

describe 'Food' do
  describe 'initialize' do
    it "supplies the necessary information for the food object" do
      params = {gtinUpc: "728229015529", description: "REAL VEGETABLE CHIPS", brandOwner: "The Hain Celestial Group, Inc.", ingredients: "A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA)"}
      food = Food.new(params)
    end
  end
end
