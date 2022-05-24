class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end
end
