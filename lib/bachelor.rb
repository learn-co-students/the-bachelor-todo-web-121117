require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each{|key, value|
    if key["status"] == "Winner"
      return key["name"].split[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each{|season, value|
    value.each{|contestant, value|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each{|season, value|
    value.each{|contestant, value|
      if contestant["hometown"] == hometown
        count +=1
      end
    }
  }
  count
end

def get_occupation(data, hometown)
  data.each{|season, value|
    value.each{|contestant, value|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  ages = 0
  data[season].each{|contestant, value|
    ages += contestant["age"].to_f
  }
  ages /= data[season].length
  ages.round
end
