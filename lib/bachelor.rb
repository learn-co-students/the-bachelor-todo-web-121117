def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] = "Winner"
      winner = contestant["name"].split(" ")
      return winner[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] ==  hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  counter = 0

  data[season].each do |contestant|
    ages += contestant["age"].to_f
    counter += 1
  end
  (ages/counter).round
end
