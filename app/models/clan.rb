class Clan < ApplicationRecord
  has_many :rosters, as: :owner
end
