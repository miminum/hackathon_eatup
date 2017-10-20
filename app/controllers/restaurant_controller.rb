class RestaurantController < ApplicationController
  def index
    city = 259
    @response = HTTParty.get("https://developers.zomato.com/api/v2.1/search?entity_id=#{city}&entity_type=city&sort=rating&order=desc", :headers => {"X-Zomato-API-Key" => ENV.fetch("ZOMATO_API_KEY")})
  end
end
