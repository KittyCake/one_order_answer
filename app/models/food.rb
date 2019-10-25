class Food < ApplicationRecord
  has_many :meal_foods
  has_many :meals, through: :meal_foods

  def other_foods
    foods = meals.map { |m| m.foods }.flatten.sort
    foods.select { |food| food.id != self.id }
  end

  def max_meals_num
    meals.count
  end
end
