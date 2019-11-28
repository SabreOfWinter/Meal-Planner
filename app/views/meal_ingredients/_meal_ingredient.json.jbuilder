json.extract! meal_ingredient, :id, :ingredient_id, :meal_id, :amount, :created_at, :updated_at
json.url meal_ingredient_url(meal_ingredient, format: :json)
