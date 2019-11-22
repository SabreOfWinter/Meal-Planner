class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.belongs_to :users, foreign_key: true
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
