class Roster < ApplicationRecord
  scope :team_leader, -> { RosterUser.team_leader }

  belongs_to :owner, polymorphic: true
  has_many :roster_users
  has_many :users, through: :roster_users

  enum game_mode: [:domination5v5, :conquest12v12, :frontlines8v8, :other]
end
