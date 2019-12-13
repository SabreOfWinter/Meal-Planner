class CreatePlanMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_meals do |t|
      t.belongs_to :meal, foreign_key: true
      t.belongs_to :dayplan, foreign_key: true

      t.timestamps
    end
  end
end
