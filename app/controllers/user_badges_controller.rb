class UserBadgesController < ApplicationController
  def index
    @user = current_user
    @userbadges = @user.user_badges
  end

  def show
  end
end
