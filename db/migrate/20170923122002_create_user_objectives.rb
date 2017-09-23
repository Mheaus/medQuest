class CreateUserObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :user_objectives do |t|
      t.references :user_badge, foreign_key: true
      t.references :objective, foreign_key: true

      t.timestamps
    end
  end
end
