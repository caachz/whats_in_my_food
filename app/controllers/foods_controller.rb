class FoodsController < ApplicationController
  def index
    search_criteria = params["q"]

    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/search?api_key=4A0mVGk5VY9uktsEpGZmWZhWdjE8QEVv7w5dFL04&ingredients=#{search_criteria}")
    require "pry"; binding.pry
  end
end
