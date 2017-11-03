class Roster < ApplicationRecord
  scope :team_leader, -> { RosterUser.team_leader }

  belongs_to :owner, polymorphic: true
  belongs_to :competition, optional: true
  has_many :roster_users
  has_many :users, through: :roster_users

  enum game_mode: [:domination_5v5, :conquest_12v12, :frontlines_8v8, :other]
end
