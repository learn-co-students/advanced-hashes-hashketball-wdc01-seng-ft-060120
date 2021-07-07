# Write your code below game_hash
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

def num_points_scored(player)
  hash = game_hash
  hash.each_value do |team_info|
    i = 0 
    while i < team_info[:players].length do
      if team_info[:players][i][:player_name] == player
        return team_info[:players][i][:points]
      end
      i += 1
    end
    i = 0
  end
end

def shoe_size(player)
  hash = game_hash
  hash.each_value do |team_info|
    i = 0 
    while i < team_info[:players].length do
      if team_info[:players][i][:player_name] == player
        return team_info[:players][i][:shoe]
      end
      i += 1
    end
    i = 0
  end

end

def team_colors(team_name)
  hash = game_hash
  hash.each_value do |team_info|
    if team_info[:team_name] == team_name
      return team_info[:colors]
    end
  end
end

def team_names
  hash = game_hash
  names = []
  hash.each_value do |data|
    names.push(data[:team_name])
  end
  names
end

def player_numbers(team_name)
  hash = game_hash
  numbers = []
  hash.each_value do |data|
    if data[:team_name] == team_name
      data[:players].each do |player_hash|
        numbers.push player_hash[:number]
      end
    end
  end
  numbers
end

def player_stats(player)
  hash = game_hash
  index = 0
  hash.each_value do |data|
    while index < data[:players].length do
      if data[:players][index][:player_name] == player
        return data[:players][index]
      end
      index += 1
    end
    index = 0
  end
end

def big_shoe_rebounds
  hash = game_hash
  rebounds = 0
  largest_shoe_seen = 0
  hash.each_value do |data|
    data[:players].each do |player|
      if player[:shoe] > largest_shoe_seen
        largest_shoe_seen = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
    rebounds
end
