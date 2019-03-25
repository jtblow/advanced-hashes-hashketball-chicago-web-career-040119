# Write your code here!
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
      
      "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
      
      "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        },
        }
      }
    }
  end

def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if player_name == name
        return data[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if player_name == name
        return data[:shoe]
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == name
      return team_data[:colors]
    end
  end
end

def team_names
  game_hash.collect do |location, team_data|
    team_data[:team_name]
  end
end

def player_numbers(name)
  arr = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] ==name 
    team_data[:players].each do |player_name, data|
        arr << data[:number]
      end
    end
  end
  arr
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if player_name == name
        return data
      end
    end
  end
end

def big_shoe_rebounds
  shaq = 0 
  rebound = 0 
 game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if data[:shoe] > shaq
        shaq = data[:shoe]
        rebound = data[:rebounds]
      end
    end
  end
  rebound
end

def most_points_scored
  game_high = 0 
  player = nil 
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if data[:points] > game_high
        game_high = data[:points]
        player = player_name
      end
    end
  end
  player 
end

def winning_team
  h = 0 
  a = 0 
  game_hash[:home][:players].each do |player_name, data|
    h += data[:points]
  end
  game_hash[:away][:players].each do |player_name, data|
    a += data[:points]
  end
  if h > a
    game_hash[:home][:team_name]
    elsif
    h < a 
    game_hash[:away][:team_name]
    elsif
    puts "It was a tie"
  end
end


player_with_longest_name 
count = 0 
long_name = nil 
game_hash.each do |location, team_data|
  team_data[:players].each do |player_name, data|
    if player_name > count
      long_name = player_name

  
  
    
    

    









