class Food
  attr_reader :upc_code, :description, :brand_owner, :ingredients

  def initialize(params)
    require "pry"; binding.pry
    @upc_code = params[:gtinUpc]
    @description = params[:description]
    @brand_owner = params[:brandOwner]
    @ingredients = params[:ingredients]
  end
end
