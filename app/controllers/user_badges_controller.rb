class UserBadgesController < ApplicationController
  def index
  end

  def show
    @userbadge = UserBadge.find(params[:id])
  end
end
