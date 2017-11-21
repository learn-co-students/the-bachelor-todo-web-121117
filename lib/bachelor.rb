require "pry"
def get_first_name_of_season_winner(data, season)
  result = []
  data.each do |season_num,contestant_data|
    if season_num == season
      # binding.pry
      contestant_data.each do |catagory|
        if catagory["status"] == "Winner"
          result = catagory["name"]
        end
      end
    end
  end
  result.split[0]
end

def get_contestant_name(data, occupation)
  result = []
  data.each do |season_num,contestant_data|
    contestant_data.each do |catagory|
      if catagory["occupation"] == occupation
        result = catagory["name"]
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  result = 0
  data.each do |season_num,contestant_data|
    contestant_data.each do |catagory|
      if catagory["hometown"] == hometown
        result += 1
      end
    end
  end
  result
end

def get_occupation(data, hometown)
  result = 0
  data.each do |season_num,contestant_data|
    contestant_data.each do |catagory|
      if catagory["hometown"] == hometown
        return catagory["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  result = []
  data.each do |season_num,contestant_data|
    if season_num == season
      contestant_data.each do |catagory|
        result << catagory["age"].to_i
      end
    end
  end
  result = result.inject{ |sum, el| sum + el }.to_f / result.size
  result.round
end
