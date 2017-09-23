class UserBadgesController < ApplicationController
  def index
    @userbadges = current_user.user_badges
  end

  def show
    @userbadge = UserBadge.find(params[:id])
  end
end
