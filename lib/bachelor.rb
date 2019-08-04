require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each_with_index do |contestant, index|
        contestant.each do |stats, value|
          if data[season][index]["status"] == "Winner"
            return data[season][index]["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
      contestants.each_with_index do |contestant, index|
        contestant.each do |stats, value|
          if data[seasons][index]["occupation"] == occupation
            return data[seasons][index]["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
      contestants.each_with_index do |contestant, index|
        if data[seasons][index]["hometown"] == hometown
          counter += 1
        end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each_with_index do |contestant, index|
      if data[seasons][index]["hometown"] == hometown
        return data[seasons][index]["occupation"]
      end
   end
 end
end

def get_average_age_for_season(data, season)
  total = 0
  counter = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each_with_index do |contestant, index|
        counter += 1
        contestant.each do |stats, value|
          if stats == "age"
            total += value.to_i
          end
        end
      end
    end
  end
  return (total.to_f/counter.to_f).round
end
