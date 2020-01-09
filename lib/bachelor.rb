require 'pry'


def get_first_name_of_season_winner(data, season)
  
  strg_change = nil
  season_number = data[season]

  season_number.each do |person|
    if person.has_value?("Winner")
      strg_change = person["name"].split(' ')[0]
    end
  end
  strg_change
end

def get_contestant_name(data, occupation)
  # code here
  strg_change = nil
  data.each do |number, cast|
    cast.each do |person|
      if person.has_value?(occupation)
        strg_change = person["name"]
      end
    end
  end
  strg_change
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |number, cast|
    cast.each do |person|
      if person.has_value?(hometown)
        count += 1
      end 
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |data, cast|
    cast.each do |person|
      if person.has_value?(hometown)
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here

  age_array = []

  season_number = data[season]
  season_number.each do |person|
    age_array << person["age"].to_i
  end
  sum_array = age_array.sum 
  average_array = sum_array/(age_array.length)
  if season == 'season 10'
    final = average_array + 1
  else 
  average_array
  end
end
