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
        }
    }
  }
}
end

def num_points_scored(player)
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if info == :players
        value.each do |player_name, game_stat|
          if player_name == player
            game_stat.each do |stats, number|
              if stats == :points
                return number
              end
            end
          end
        end
      end
    end
  end
end

def shoe_size(player)
   game_hash.each do |location, attribute|
    #attribute.each do |info, value|
      value = attribute[:players]
      binding.pry
      #if info == :players
        value.each do |player_name, game_stat|
          if player_name == player
            game_stat.each do |stats, number|
              if stats == :shoe
                return number
              end
            end
          end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if team_name == value
        attribute.each do |info1, value1|
         if info1 == :colors
           return value1
         end
        end
      end
    end
  end
end

def team_names
  both_teams = []
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if info == :team_name
      both_teams << value
      end
    end
  end
  both_teams
end

def player_numbers(team_name)
  player_numbers_array = []
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if value == team_name
        attribute.each do |info1, value1|
          if info1 == :players
            value1.each do |player_name, game_stat|
              game_stat.each do |stats, number|
               if stats == :number
                 player_numbers_array << number
               end
              end
            end
          end
        end
      end
    end
  end
  player_numbers_array
end

def player_stats(player)
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if info == :players
        value.each do |player_name, game_stat|
          if player_name == player
            return game_stat
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  players_and_shoe_size = {}
  game_hash.each do |location, attribute|
    attribute.each do |info, value|
      if info == :players
        value.each do |player, game_stat|
          game_stat.each do |stats, number|
            if stats == :shoe
              players_and_shoe_size[player]
              players_and_shoe_size[player] = number
            end
          end
        end
        value.each do |player1, game_stat1|
          game_stat1.each do |stats1, number1|
            if player1 == players_and_shoe_size.keys.first && stats1 == :rebounds
              return number1
            end
          end
        end
      end
    end
  end
end





