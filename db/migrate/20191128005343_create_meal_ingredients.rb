class CreateMealIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_ingredients do |t|
      t.belongs_to :meal, foreign_key: true, null: false
      t.belongs_to :ingredient, foreign_key: true, null: false
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
