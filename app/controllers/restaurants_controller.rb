class RestaurantsController < ApplicationController
  include RestaurantsHelper

  def index
    city = 259
    @current_cuisine = Profile.find_by(user_id: current_user.id).cuisine_preference
    cuisine_number = cuisine_to_id(@current_cuisine)
    @response = HTTParty.get("https://developers.zomato.com/api/v2.1/search?entity_id=#{city}&entity_type=city&cuisines=#{cuisine_number}&sort=rating&order=desc", :headers => {"X-Zomato-API-Key" => ENV.fetch("ZOMATO_API_KEY")})
  end
end
