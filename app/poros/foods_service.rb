class FoodsService
  attr_reader :all_foods

  def initialize
    @all_foods = []
  end

  def get_foods(query_params)
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/search?api_key=#{ENV["USDA_API_KEY"]}&ingredients=#{query_params}")

    response = conn.get

    json = JSON.parse(response.body, symbolize_names: true)

    json[:foods].each do |data|
      food = Food.new(data)
      @all_foods << food
    end
  end
end
