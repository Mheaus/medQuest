class UserBadgesController < ApplicationController
  def index
    @userbadges = current_user.user_badges
  end

  def show
  end
end
