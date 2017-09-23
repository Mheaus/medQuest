class UserBadgesController < ApplicationController
  def index
    @user = current_user
    @userbadges = @user.user_badges
  end

  def show
    @user = current_user
    @badge = UserBadge.find(params[:id]).badge
    @objectives = @badge.objectives
  end
end
