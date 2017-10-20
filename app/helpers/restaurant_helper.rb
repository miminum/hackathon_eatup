module RestaurantHelper


def cuisine_to_id (cuisine)
    cuisine = cuisine.downcase  
    case cuisine
      when 'chinese'
        25
      when 'french'
        45
      when 'italian'
        55
      when 'japanese'
        60
      when 'mexican'
        73
      when 'spanish'
        89
      when 'ethiopian'
        149
      when 'thai'
        95
      when 'ethiopian'
        152
      when 'vietnamese'
        99
      end
  end

end
