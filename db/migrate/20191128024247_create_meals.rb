class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.text :recipe, null: false
      t.boolean :public, default: false
      t.integer :user, null: false

      t.timestamps
    end
  end
end
