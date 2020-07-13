require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  first_name = []
  data.each do |bachelor_season, contestants|
    if bachelor_season == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          # binding.pry
          first_name << contestant["name"].split(' ')[0]
        end
      end
    end
  end
  first_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  first_name = []
  data.each do |bachelor_season, contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
          # binding.pry
          first_name << contestant["name"]
        end
      end

  end
  first_name[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |bachelor_season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        # binding.pry
        count = count + 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |bachelor_season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        # binding.pry
        occupation << contestant["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages_of_contestants = []
  data.each do |bachelor_season, contestants|
    if bachelor_season == season
      contestants.each do |contestant|
        ages_of_contestants << contestant['age'].to_f
      end
    end
  end
  # binding.pry
  average = ages_of_contestants.inject { |sum, el| sum + el }.to_f / ages_of_contestants.size
  if average - average.floor >= 0.5
    average.ceil
  else
    average.floor
  end
end
