class UserObjective < ApplicationRecord
  belongs_to :user_badge
  belongs_to :objective
end
