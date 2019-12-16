class AddUserIdColumnToMealIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_ingredients, :user_id, :integer, column_options:{null: false}
  end
end
