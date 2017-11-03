class Nation < ApplicationRecord
  has_attached_file :large_flag
  has_attached_file :small_flag

  has_many :rosters, as: :owner
end
