class Meal < ApplicationRecord
  has_many :meal_foods
  has_many :foods, through: :meal_foods

  def self.no_food_meals
    select { |meal| !meal.has_food? }
  end

  def has_food?
    foods.any?
  end
end
