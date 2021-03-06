class MealIngredientsController < ApplicationController
  def new
    @meal_ingredient = MealIngredient.new
    @meal = Meal.find(params[:meal_id])
    @day = Day.find(params[:day_id])
    @meal_type = MealType.find(@meal.meal_type_id)
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @day = Day.find(params[:day_id])
    @meal_ingredient = MealIngredient.new(meal_id: @meal.id)
    @meal_ingredient.ingredient_id = params[:meal_ingredient][:ingredient_id]
    @meal_ingredient.quantity = params[:meal_ingredient][:quantity]
    if @meal_ingredient.save
      redirect_to day_meal_path(@day.id, @meal.id)
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
    day = Day.find(params[:day_id])
    ingredient = Ingredient.find(params[:id])
    meal = Meal.find(params[:meal_id])
    meal_ingredient = MealIngredient.where(ingredient_id: ingredient.id).find_by_meal_id(meal.id)
    meal_ingredient.destroy
    redirect_to day_meal_path(day.id, meal.id)
  end
end
