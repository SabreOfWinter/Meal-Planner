json.extract! ingredient, :id, :name, :amount, :energy, :fat, :saturates, :carbohydrates, :sugar, :fibre, :protein, :salt, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
