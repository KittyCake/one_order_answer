class MealsController < ApplicationController
  def no_food_meal
    render json: Meal.no_food_meals
  end
end
