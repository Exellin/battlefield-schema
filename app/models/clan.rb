class Clan < ApplicationRecord
  has_many :rosters, as: :owner
  has_many :users
end
