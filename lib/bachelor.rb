def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant| #iterate through array / hash data
   if contestant["status"] == "Winner" #check status is winner
      return contestant["name"].split(' ').first #string manipulation turns the array into string - returns the first name
    end
  end
 end

def get_contestant_name(data, occupation)
  data.each do |season, information | #iterate through season and data information
   information.each do |contestant| #iterating through information which is the value
      if contestant["occupation"] == occupation #validating occupation
        return contestant ["name"] #returns contestants name
    end
  end
 end
 end
 def count_contestants_by_hometown(data, hometown)
  count = 0 #start at 0
    data.each do |season, info| #iterate through first level seasons
      info.each do |contestant| #iterate through second level of information
        if contestant["hometown"] == hometown
          count += 1 #incrament by a value of 1
        end
      end
    end
    count
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
   total_age = 0 #variable total_age = to a number
   data[season].each do |contestant|#iterate through array / hash data
     total_age += contestant["age"].to_i #total age is going to incrament by contestants age rounded to an integer
   end
     average = total_age.to_f/data[season].length
    return average.round #round to the nearest whole number
end
