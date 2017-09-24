class AddIconNameToBadges < ActiveRecord::Migration[5.1]
  def change
    add_column :badges, :icon_name, :string
  end
end
