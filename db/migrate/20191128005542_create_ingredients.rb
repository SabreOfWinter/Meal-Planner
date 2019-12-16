class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.integer :amount, null: false
      t.integer :energy, null: false
      t.decimal :fat, null: false
      t.decimal :saturates, null: false
      t.decimal :carbohydrates, null: false
      t.decimal :sugar, null: false
      t.decimal :fibre, null: false
      t.decimal :protein, null: false
      t.decimal :salt, null: false

      t.timestamps
    end
  end
end
