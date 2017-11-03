class Match < ApplicationRecord
  include GameMode
  has_many :rosters
  has_many :lineups

  enum game_mode: GameMode.game_modes
end
