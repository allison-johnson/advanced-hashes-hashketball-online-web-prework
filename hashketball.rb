def game_hash()
  game = {
    :home => {
      :team_name => "Brooklyn Nets" ,
      :colors => ["Black", "White"] ,
      :players => [
        {:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ] #end players array
    },#end home
    
    :away => {
      :team_name => "Charlotte Hornets" ,
      :colors => ["Turquoise", "Purple"] ,
      :players => [
        {:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
        {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ] #end players array
    }#end away

  }#end game
end #end game_hash method

def num_points_scored(a_name)
  info = game_hash()
  all_players = info[:home][:players]
  target_player = all_players.find{|player| player[:player_name] == a_name}
  if target_player
	target_player[:points]
  else
	all_players = info[:away][:players]
	target_player = all_players.find{|player| player[:player_name] == a_name}
	target_player[:points]
  end
end #end num_points_scored method

def shoe_size(a_name)
  info = game_hash()
  all_players = info[:home][:players]
  target_player = all_players.find{|player| player[:player_name] == a_name}
  if target_player
	target_player[:shoe].to_i
  else
	all_players = info[:away][:players]
	target_player = all_players.find{|player| player[:player_name] == a_name}
	target_player[:shoe].to_i
  end
end #end shoe_size method

def team_colors(a_team_name)
  info = game_hash()
  if info[:home][:team_name] == a_team_name
    info[:home][:colors]
  else
    info[:away][:colors]
  end
end #end team_colors method

def team_names()
  info = game_hash()
  names = []
  info.each do |key,val|
    names << val[:team_name]
  end #end each
  names
end #end team_names method

def player_numbers(a_team_name)
  info = game_hash()
  player_nums = []
  if info[:home][:team_name] == a_team_name
    all_players = info[:home][:players]
	all_players.each{|player| player_nums << player[:number].to_i}
  else
    all_players = info[:away][:players]
	all_players.each{|player| player_nums << player[:number].to_i}
  end #if
  player_nums
end #player_numbers method

def player_stats(a_name)
  info = game_hash()
  home_players = info[:home][:players]
  home_players.each do |player|
    if player[:player_name] == a_name
	  player.delete(:player_name)
	  return player
	end #if
  end #home players each
  
  away_players = info[:away][:players]
  away_players.each do |player|
    if player[:player_name] == a_name
	  player.delete(:player_name)
	  return player
	end #if
  end #away players each
end #player_stats method










