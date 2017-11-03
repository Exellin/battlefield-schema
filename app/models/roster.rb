class Roster < ApplicationRecord
  include GameMode
  scope :team_leader, -> { RosterUser.team_leader }

  belongs_to :owner, polymorphic: true
  belongs_to :competition, optional: true
  belongs_to :match, optional: true
  has_many :roster_users
  has_many :users, through: :roster_users

  enum game_mode: GameMode.game_modes
end
