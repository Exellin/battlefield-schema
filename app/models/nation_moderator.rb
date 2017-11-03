class NationModerator < ApplicationRecord
  belongs_to :nation
  belongs_to :user
end
