class UserBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge
  has_many :user_objectives

  def all_objectives_done?
    badge.objectives.count == user_objectives.count
  end
end
