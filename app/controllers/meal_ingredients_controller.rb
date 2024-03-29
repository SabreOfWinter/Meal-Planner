class MealIngredientsController < ApplicationController
  before_action :set_meal_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /meal_ingredients
  # GET /meal_ingredients.json
  def index
    @meal_ingredients = MealIngredient.user_meal_ingredients(current_user.id)
  end

  # GET /meal_ingredients/1
  # GET /meal_ingredients/1.json
  def show
    if :user_id != current_user.id
      redirect_to meal_ingredients_path
    end
  end

  # GET /meal_ingredients/new
  def new
    if Ingredient.all.size != 0 and Meal.where(user: current_user.id).size != 0
      @meal_ingredient = MealIngredient.new
    elsif Ingredient.all.size == 0
        redirect_to meal_ingredients_path, notice: 'No ingredients found'
    elsif Meal.where(user: current_user.id).size == 0
        redirect_to meal_ingredients_path, notice: 'No meals found'
    end
  end

  # GET /meal_ingredients/1/edit
  def edit
  end

  # POST /meal_ingredients
  # POST /meal_ingredients.json
  def create
    @meal_ingredient = MealIngredient.new(meal_ingredient_params)
    respond_to do |format|
      if @meal_ingredient.save
        format.html { redirect_to @meal_ingredient, notice: 'Meal ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @meal_ingredient }
      else
        format.html { render :new }
        format.json { render json: @meal_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_ingredients/1
  # PATCH/PUT /meal_ingredients/1.json
  def update
    respond_to do |format|
      if @meal_ingredient.update(meal_ingredient_params)
        format.html { redirect_to @meal_ingredient, notice: 'Meal ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @meal_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_ingredients/1
  # DELETE /meal_ingredients/1.json
  def destroy
    @meal_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to meal_ingredients_url, notice: 'Meal ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_ingredient
      @meal_ingredient = MealIngredient.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_ingredient_params
      params.require(:meal_ingredient).permit(:ingredient_id, :meal_id, :amount, :user_id)
    end
end
