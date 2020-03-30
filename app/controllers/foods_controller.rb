class FoodsController < ApplicationController
  def index
    conn = FoodsService.new
    conn.get_foods(params["q"])
    @foods = conn.all_foods
  end
end
