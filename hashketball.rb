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

def player_stats(player_name)
  game_hash.each_pair do |(team, info)|
    info[:players].count do |player|
      if player[:player_name] == player_name
        return player
      end
    end
  end
end

def num_points_scored(player_name)
  stats = player_stats(player_name)
  stats[:points]
end

def shoe_size(player_name)
  stats = player_stats(player_name)
  stats[:shoe]
end

def team_stats(team_name)
  game_hash.each_pair do |(team, info)|
    if info[:team_name] == team_name
      return info
    end
  end
end

def team_colors(team_name)
  stats = team_stats(team_name)
  stats[:colors]
end

def team_names
  name_array = []
  game_hash.each_pair do |(team, info)|
    name_array.push(info[:team_name])
  end
  name_array
end

def player_numbers(team_name)
  number_hash = []
  stats = team_stats(team_name)
  stats[:players].count do |player|
    number_hash.push(player[:number])
  end
  number_hash
end

def big_shoe_rebounds
  max_shoe_size= 0
  associated_rebounds = 0
  game_hash.each_pair do |(team, info)|
    info[:players].count do |player|
      if player[:shoe] > max_shoe_size
        max_shoe_size = player[:shoe]
        associated_rebounds = player[:rebounds]
      end
    end
    associated_rebounds
  end
  associated_rebounds
end

def most_points_scored
  top_score= 0
  mvp = ""
  game_hash.each_pair do |(team, info)|
    info[:players].count do |player|
      if player[:points] > top_score
        top_score = player[:points]
        mvp = player[:player_name]
      end
    end
    mvp
  end
  mvp
end

def winning_team
  score_hash = game_hash.reduce({}) do |memo, (team, info)|
    if memo[info[:team_name]] === nil
      memo[info[:team_name]]
    end
    points = []
    info[:players].count do |player|
      points.push(player[:points])
    end
    memo[info[:team_name]] = points.sum
    memo
  end
  winner = score_hash.max_by{|k,v| v}
  puts "The #{winner[0]} won with #{winner[1]} points"
  winner
end

def player_with_longest_name
  name_length = 0
  long_name = ""
  game_hash.each_pair do |(team, info)|
    info[:players].count do |player|
      if player[:player_name].length > name_length
        name_length = player[:player_name].length
        long_name = player[:player_name]
      end
    end
    long_name
  end
  long_name
end

def long_name_steals_a_ton?
  most_steals = 0
  top_thief = ""
  game_hash.each_pair do |(team, info)|
    info[:players].count do |player|
      if player[:steals] > most_steals
        most_steals = player[:steals]
        top_thief = player[:player_name]
      end
    end
    top_thief
  end
  if top_thief == player_with_longest_name
    return true
  else
    return false
  end
end