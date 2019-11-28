class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :amount
      t.integer :energy
      t.decimal :fat
      t.decimal :saturates
      t.decimal :carbohydrates
      t.decimal :sugar
      t.decimal :fibre
      t.decimal :protein
      t.decimal :salt

      t.timestamps
    end
  end
end
