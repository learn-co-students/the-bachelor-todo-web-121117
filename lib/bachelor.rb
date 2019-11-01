#require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |person, person_data|
    if person["status"] == "Winner"
      return person["name"].split(' ').first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|
    season_data.each do |person, person_data|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, season_data|
    season_data.each do |person, person_data|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |person, person_data|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  number_of_contestants = 0
  data[season].each do |person, person_data|
    number_of_contestants += 1
    age_total += person["age"].to_i
  end
  (age_total.to_f/number_of_contestants).round
end
