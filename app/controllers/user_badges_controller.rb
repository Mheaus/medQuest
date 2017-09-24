class UserBadgesController < ApplicationController
  def index
    @userbadges = current_user.ongoing_badges
    @completed_badges = current_user.completed_badges
  end

  def show
    @userbadge = UserBadge.find(params[:id])
  end
end
