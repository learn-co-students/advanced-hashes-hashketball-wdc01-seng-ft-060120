# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_names)
  score = 0
 game_hash.each do |h_a, team_stats|
   team_stats[:players].each do |inner_stats|
     inner_stats.each do |stat_name, value|
       if player_names == value
         score = inner_stats[:points]
         break
       end
       #binding.pry
     end
     #binding.pry
   end
   #binding.pry
 end
 score
 #binding.pry
end

def shoe_size(player_names)
  ss = 0
 game_hash.each do |h_a, team_stats|
   team_stats[:players].each do |inner_stats|
     inner_stats.each do |stat_name, value|
       if player_names == value
         ss = inner_stats[:shoe]
         break
       end
       #binding.pry
     end
     #binding.pry
   end
   #binding.pry
 end
 ss
 #binding.pry
end

def team_colors(team_name)
  tc = nil
  game_hash.each do |h_a, team_stats|
    team_stats.each do |rep, inner_stats|
      if team_name == inner_stats
        tc = team_stats[:colors]
      end
      #binding.pry
    end
    #binding.pry
  end
  tc
  #binding.pry
end

def team_names
  array = []
  game_hash.each do |h_a, team_stats|
    array << team_stats[:team_name]
  end
  array
  #binding.pry
end

def player_numbers(team_name)
  array = []
  game_hash.each do |h_a,team_stats|
    if team_name == team_stats[:team_name]
    team_stats[:players].each do |inner_stats|
      array << inner_stats[:number]
    #inding.pry
    end
  end
  end
  array
#binding.pry
end

def player_stats(player_name)
  ps = nil
  game_hash.each do |h_a, team_stats|
    team_stats[:players].each do |inner_stats|
      inner_stats.each do |stat_name, value|
        if player_name == value
           #inner_stats.delete(:player_name)
            return inner_stats
        end
        
        #binding.pry
      end
     # binding.pry
    end
    #binding.pry
  end
  ps
  #binding.pry
end

def big_shoe_rebounds
  array = []
  rb = nil
  game_hash.each do |h_a,team_stats|
    team_stats[:players].each do |inner_stats|
      array << inner_stats[:shoe]
      if inner_stats[:shoe] == array.max
        rb = inner_stats[:rebounds]
        
      end
    #binding.pry
    end
  end
  array 
  rb
  #binding.pry
end

