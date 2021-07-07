# Write your code below game_hash
require "pry"

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
# Build a method, `num_points_scored` that takes in an argument of a player's name and returns the number of points scored for that player



def team team_name
    case team_name
  when game_hash[:home][:team_name]
    game_hash[:home]
  when game_hash[:away][:team_name]
    game_hash[:away]
  end
end


def num_points_scored(player_name)
 game_hash.each do |key, value|
    value[:players].each do |player_1|
  if player_name == player_1[:player_name]
    return player_1[:points]
    end
    end
  end
end


def shoe_size(player_name)
   game_hash.each do |key, value|
    value[:players].each do |player_1|
  if player_name == player_1[:player_name]
    return player_1[:shoe]
    end
    end
  end
end
 


def team_colors(team_name)
   case team_name
   when game_hash[:home][:team_name]
     game_hash[:home][:colors]
   when game_hash[:away][:team_name]
     game_hash[:away][:colors]
   end
 end
# or

#def team_colors(team_name)
#  team(team_name)[:colors]
#end



def team_names
  [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end


def player_stats(player_name)
 game_hash.each do |key, value|
    value[:players].each do |team_1|
    if player_name == team_1[:player_name]
  return team_1
    end
    end
  end
end



def player_numbers(team_name)
  team(team_name)[:players].map do |key|
    key[:number]
  end
end
 
 

# Build a method, `big_shoe_rebounds`, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

# def big_shoe_rebounds(player_name)
#   game_hash.each do |key, value|
#     value[:players].each do 
#   big_shoe = game_hash[:home][:players][:shoe].merge([:away][:players][:shoe])
#   count = 0
#   largest_shoe_size = -1
#   while count < big_shoe.length do
#     if largest_shoe_size < big_shoe[count]
#       largest_shoe_size = big_shoe[count]
#       return value[:players]
#     end
#     count += 1
#   end
# end
# end
# end


  # * First, find the player with the largest shoe size
  # * Then, return that player's number of rebounds
  # * Remember to think about return values here.


def big_shoe_rebounds
  
  big_shoe = 0
  rebounds = 0
  
  game_hash.each do |key, value|
   
    value[:players].each do |player|
  
    if big_shoe < player[:shoe]
     rebounds = player[:rebounds]
     big_shoe = player[:shoe]
     
    end
  end
 end
 return rebounds
end
