class UserObjectivesController < ApplicationController
  def create
    @userbadge = UserBadge.find(params[:user_badge_id])
    user_objective = @userbadge.user_objectives.build(user_badge_params)
    user_objective.save
    @trigger_modal = @userbadge.all_objectives_done?
  end

  def user_badge_params
    params.permit(:objective_id)
  end
end
