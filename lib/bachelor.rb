# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }


def get_first_name_of_season_winner(data, season)
  # 1. Build a method, `get_first_name_of_season_winner`, that takes in two arguments, a hash called `data`
  # (i.e. the data structure described above), and a season. The method should return the *first name* of that
  # season's winner. **Hint**: you'll need to do some string manipulation to return only the first name of the winning lady.
  # * Think about how you will iterate through the hash to get to the level that contains a contestant's status.
  # * How will you check to see if a contestant's status equals "Winner"?
  # code here


  data[:"#{season}"].each do |information|
    if information[:status] == "Winner"
      puts information[:name]
    end

  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
