class UserObjectivesController < ApplicationController
  def create
    user_badge = UserBadge.find(params[:user_badge_id])
    user_objective = user_badge.user_objectives.build(user_badge_params)
    user_objective.save
    redirect_to user_badge
  end

  def user_badge_params
    params.permit(:objective_id)
  end
end
