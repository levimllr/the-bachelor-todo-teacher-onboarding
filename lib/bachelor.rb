require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      value.each do |contestant|
        if contestant["status"] == "Winner"
          full_name = contestant["name"]
          name_array = full_name.split(" ")
          first_name = name_array[0]
          return first_name
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  number_from_hometown =  0
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        number_from_hometown += 1
      end
    end
  end
  return number_from_hometown
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  number_of_contestants = 0
  data.each do |key, value|
    if key == season 
      value.each do |contestant|
        number_of_contestants += 1
        total_age += contestant["age"].to_f
      end
    end
  end
  average_age = (total_age/number_of_contestants).round
  return average_age
end
