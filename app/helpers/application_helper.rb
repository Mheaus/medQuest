module ApplicationHelper
  def done_class(objective)
    current_user.has_done_this?(objective) ? "objective-done" : "objective-undone"
  end
end
