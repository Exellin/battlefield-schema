class Lineup < ApplicationRecord
  has_many :lineup_users
  has_many :users, through: :lineup_users
  belongs_to :match
end