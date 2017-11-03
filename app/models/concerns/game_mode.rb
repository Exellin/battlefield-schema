module GameMode
  extend ActiveSupport::Concern

  def self.game_modes
    [:domination_5v5, :conquest_12v12, :frontlines_8v8, :other_game_mode]
  end
end
