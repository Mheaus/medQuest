class UserObjectivesController < ApplicationController
  def create
    @userbadge = UserBadge.find(params[:user_badge_id])
    user_objective = @userbadge.user_objectives.build(user_badge_params)
    user_objective.save
    byebug
    if @userbadge.all_objectives_done?
      @userbadge.update(completed: true)
      @trigger_modal = true
    end
  end

  def user_badge_params
    params.permit(:objective_id)
  end
end
