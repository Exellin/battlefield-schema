class RosterUser < ApplicationRecord
  scope :team_leader, -> { where(team_leader: true) }

  belongs_to :roster
  belongs_to :user
end
