class Competition < ApplicationRecord
  has_many :rosters

  enum competition: [:world_cup, :clan_championships, :regional_championships,
                     :clan_divisions, :b_tier_championships, :trial_cup, :other]
  enum competition_region: [:europe, :north_america, :middle_east, :south_america, :north_africa, :oceania, :any]
  enum competition_type: [:leage, :league_and_playoffs, :knockout]
  enum roster_type: [:clans, :nations]
  enum game_mode: [:domination_5v5, :conquest_12v12, :frontlines_8v8, :other]
  enum registration: [:open, :private]
  enum roster_size_type: [:any, :x_to_x]
end
