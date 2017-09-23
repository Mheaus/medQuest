class CreateObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.references :badge, foreign_key: true

      t.timestamps
    end
  end
end
