class UserBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge
  has_many :user_objectives
end
