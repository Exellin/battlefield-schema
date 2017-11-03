class Nation < ApplicationRecord
  has_attached_file :large_flag
  has_attached_file :small_flag
end
