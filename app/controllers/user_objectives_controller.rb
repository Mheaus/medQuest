class UserObjectivesController < ApplicationController

  def create
    @user_badges = UserBadge.find(params[:user_badge_id])
    @objective = Objective.find(params[:format])
    @user_objective = UserObjective.new(user_badge: @user_badges, objective: @objective)
      if @user_objective.save
        redirect_to user_badge_path(@user_badges)
      end
    end
end
