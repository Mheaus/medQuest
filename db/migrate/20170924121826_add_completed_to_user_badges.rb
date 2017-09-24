class AddCompletedToUserBadges < ActiveRecord::Migration[5.1]
  def change
    add_column :user_badges, :completed, :boolean, default: false
  end
end
