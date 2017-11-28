require 'pry'

def get_first_name_of_season_winner(data, season)
  data.keys.each do |seasons|
    if seasons == season
      data[seasons].each do |contestant|
        contestant.values.each do |stats|
          if stats == "Winner"
            contestant.keys.each_with_index do |findName, i|
              if findName == "name"
                winner = contestant.values[i].split(" ")
                return winner[0]
              end
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.keys.each do |seasons|
      data[seasons].each do |contestant|
        contestant.values.each do |stats|
          if stats == occupation
            return contestant.values[0]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.keys.each do |seasons|
    data[seasons].each do |contestant|
      contestant.values.each do |stats|
        if stats == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.keys.each do |seasons|
    data[seasons].each do |contestant|
      contestant.values.each do |stats|
        if stats == hometown
          return contestant.values[3]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  numOfContestants = 0
  data.keys.each do |seasons|
    if seasons == season
      data[seasons].each do |contestant|
        counter += contestant.values[1].to_f
        numOfContestants += 1
      end
    end
  end
  return (counter / numOfContestants).round
end
