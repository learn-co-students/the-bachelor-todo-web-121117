# require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = []
  data.each do |season_data,details_array|
    if season == season_data
      details_array.each do |details_hash|
        details_hash.each do |key,value|
          if value == "Winner"
            full_name = data [season][0]["name"]
            first_name=full_name.split(" ")
          end
        end
      end
    end
  end
  first_name[0]
end

def get_contestant_name(data, occupation)
full_name=''

  data.each do |season_data,details_array|
    details_array.each_with_index do |details_hash,i|
      details_hash.each do |key,value|
        if value == occupation
          full_name = data [season_data][i]["name"]
          # binding.pry
        end
      end
    end
  end
  full_name
end


def count_contestants_by_hometown(data, hometown)
  counter=0
  data.each do |season_data,details_array|
    details_array.each do |details_hash|
      details_hash.each do |key,value|
        if value == hometown
          counter+=1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  job = ""
  stop= false

  data.each do |season_data,details_array|
    details_array.each_with_index do |details_hash,i|
      details_hash.each do |key,value|
        if value == hometown && stop == false
            job = data [season_data][i]["occupation"]
            stop = true
        end
      end
    end
  end
  job
end

def get_average_age_for_season(data, season)
  age=0
  count=0

  data.each do |season_data,details_array|
    if season == season_data
      details_array.each do |details_hash|
        details_hash.each do |key,value|
          if key == "age"
            age+= value.to_f
            count+=1
          end
        end
      end
    end
  end
  average_age=age/count
  average_age.round
end
