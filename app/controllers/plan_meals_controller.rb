class PlanMealsController < ApplicationController
  before_action :set_plan_meal, only: [:show, :edit, :update, :destroy]

  # GET /plan_meals
  # GET /plan_meals.json
  def index
    @plan_meals = PlanMeal.all
  end

  # GET /plan_meals/1
  # GET /plan_meals/1.json
  def show
  end

  # GET /plan_meals/new
  def new
    @plan_meal = PlanMeal.new
  end

  # GET /plan_meals/1/edit
  def edit
  end

  # POST /plan_meals
  # POST /plan_meals.json
  def create
    @plan_meal = PlanMeal.new(plan_meal_params)

    respond_to do |format|
      if @plan_meal.save
        format.html { redirect_to @plan_meal, notice: 'Plan meal was successfully created.' }
        format.json { render :show, status: :created, location: @plan_meal }
      else
        format.html { render :new }
        format.json { render json: @plan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_meals/1
  # PATCH/PUT /plan_meals/1.json
  def update
    respond_to do |format|
      if @plan_meal.update(plan_meal_params)
        format.html { redirect_to @plan_meal, notice: 'Plan meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_meal }
      else
        format.html { render :edit }
        format.json { render json: @plan_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_meals/1
  # DELETE /plan_meals/1.json
  def destroy
    @plan_meal.destroy
    respond_to do |format|
      format.html { redirect_to plan_meals_url, notice: 'Plan meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_meal
      @plan_meal = PlanMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_meal_params
      params.require(:plan_meal).permit(:meal_id, :dayplan_id)
    end
end
