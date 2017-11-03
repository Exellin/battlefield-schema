class LineupUser < ApplicationRecord
  belongs_to :lineup
  belongs_to :user
end
