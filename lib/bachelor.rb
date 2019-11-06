require 'pry'

# not sure why this is passing.
def get_first_name_of_season_winner(data, season)
  data.each do | season_num, season_data|
  season_data.each do | contestant_data |
    if season_num == season
      return contestant_data["name"].split(" ")[0]
  end
end
end
end


def get_contestant_name(data, occupation)
  data.each do |season_num, season_data|
    season_data.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
    binding.pry
    end
  end
  end
end


def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season_num, season_data|
    season_data.each do |contestant_data|
    if contestant_data["hometown"] == hometown
    counter += 1
    end
  end
end
counter
end

def get_occupation(data, hometown)
  data.each do |season_num, season_data|
    season_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
      end
  end
end


def get_average_age_for_season(data, season)
age_arr = []
data.each do |season_num, season_data|
  season_data.each do |contestant_data|
    if season_num == season
      age_arr << contestant_data["age"].to_f
    end
  end
end
y = age_arr.inject{ |sum, el| sum + el }.to_f / age_arr.size
return y.round
end
