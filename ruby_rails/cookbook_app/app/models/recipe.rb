class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    "#{hours} hours and #{minutes} minutes"
  end
end
