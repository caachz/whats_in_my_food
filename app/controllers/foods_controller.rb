class FoodsController < ApplicationController
  def index
    search_criteria = params["q"]

    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/search?api_key=4A0mVGk5VY9uktsEpGZmWZhWdjE8QEVv7w5dFL04&ingredients=#{search_criteria}")

    response = conn.get

    json = JSON.parse(response.body, symbolize_names: true)

    @foods = json[:foods]
  end
end
