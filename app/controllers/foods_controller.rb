class FoodsController < ApplicationController
  before_action :set_foods
  attr_accessor :foods

  def max_foods
    max_foods = @foods.map { |food| { food.name.to_sym => food.max_meals_num } }
    render json: max_foods
  end

  def other_food
    other_food = @foods.map {  |food| { food.name.to_sym => food.other_foods.map(&:name) } }
    render json: other_food
  end

  private

  def set_foods
    @foods = Food.all
  end
end