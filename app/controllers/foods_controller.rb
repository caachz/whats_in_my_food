class FoodsController < ApplicationController
  def index
    search_criteria = params["q"]
    conn = FoodsService.new
    @foods = conn.get_foods(search_criteria)
  end
end
