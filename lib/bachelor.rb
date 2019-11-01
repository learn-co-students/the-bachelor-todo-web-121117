def get_first_name_of_season_winner(data, season)
  name = []
  data.each do |season_data, details_array|
      if season == season_data
          details_array.each do |details_hash|
              details_hash.each do |key, value|
                  if value == "Winner"
                      full_name = data[season][0]["name"]
                      name = full_name.split(" ")
                  end
              end
          end
      end
  end
  name[0]
end

def get_contestant_name(data, occupation)
    name = " "
    
    data.each do |season_data, details_array|
        details_array.each_with_index do |details_hash, i|
            details_hash.each do |key, value|
                if value == occupation
                    name = data[season_data][i]["name"]
                end
            end
        end
    end
    name
end

def count_contestants_by_hometown(data, hometown)
    counter = 0
    
    data.each do |season_data, details_array|
        details_array.each do |details_hash|
            details_hash.each do |key, value|
                if value == hometown
                    counter += 1
                end
            end
        end
    end
    counter
end

def get_occupation(data, hometown)
    job = " "
    stop = false
    
    data.each do |season_data, details_array|
        details_array.each_with_index do |details_hash, i|
            details_hash.each do |key, value|
                if value == hometown && stop == false
                    job = data[season_data][i]["occupation"]
                    stop = true
                end
            end
        end
    end
    job
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

