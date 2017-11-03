class Competition < ApplicationRecord
  include GameMode

  has_many :rosters

  enum competition: [:world_cup, :clan_championships, :regional_championships,
                     :clan_divisions, :b_tier_championships, :trial_cup, :other_competition]
  enum competition_region: [:europe, :north_america, :middle_east, :south_america, :north_africa, :oceania, :any_region]
  enum competition_type: [:leage, :league_and_playoffs, :knockout]
  enum roster_type: [:clans, :nations]
  enum game_mode: GameMode.game_modes
  enum registration: [:open, :closed] # Unable to use private as it is a reserved keyword
  enum roster_size_type: [:any_size, :x_to_x]
end
