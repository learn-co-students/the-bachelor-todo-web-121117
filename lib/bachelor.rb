bachelor = {
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}


def get_first_name_of_season_winner(data, season)

  return_value = ""
  data[season].each do |information|
    if information["status"] == "Winner"
      return_value = information["name"].split[0]
    end

  end
  return return_value
end
def get_contestant_name(data, occupation)
  return_value = ""
  data.each do |season,information|
    information.each do |stats|
    if stats["occupation"] == occupation
      return stats["name"]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  hometown_array = []
    data.each do |season, information|
      information.each do |stats|
        if stats["hometown"] == hometown
          hometown_array << stats["name"]
        end
      end
    end
    return hometown_array.length
end

def get_occupation(data, hometown)
  # Build a method `get_occupation`, that takes in two arguments––the data hash and a string of a hometown.
  # It returns the occupation of the first contestant who hails from that hometown.
  hometown_array = []
     data.each do |season, information|
       information.each do |stats|
         if stats["hometown"] == hometown
           hometown_array << stats["occupation"]
         end
       end
     end
     return hometown_array[0]

end

def get_average_age_for_season(data, season)
  # Build a method, `get_average_age_for_season`, that takes in two arguments––the data hash and a string of a season.
  # Iterate through the hash and return the average age of all of the contestants for that season.
  # * How will you iterate down into the level of the hash that contains each contestant's age?
  # * How will you collect the ages of each contestant and average them? Remember that the values of the "age" keys are not numbers,
  #  they are strings. How do we convert strings to numbers in Ruby?
  # * Remember that dividing *integers* in Ruby always rounds down. In this case though, we want the normal math sort of rounding
  # (where .5 and higher rounds *up*), instead. Consider the difference between `to_f` and `to_i`.
  return_value = []
  average_sum = 0

  data[season].each do |information|
  return_value << information["age"].to_i
  end
  return_value.each do |item|
    average_sum += item
  end
  final_average = average_sum/(return_value.length)
return final_average
end
