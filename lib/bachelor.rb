def get_first_name_of_season_winner(data, season)
  season_array = []
  data.each do |season_number, contestants|
    if season_number == season
      season_array = contestants
    end
  end
  winner_name = ""
  season_array.each do |contestant|
    if contestant["status"] == "Winner"
      winner_name = contestant["name"]
    end
  end
  name_array = winner_name.split(" ")
  name_array[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_ages = 0
  
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        total_ages += contestant["age"].to_f
      end
      average = total_ages / contestants.length
      return average.round
    end
  end
end
