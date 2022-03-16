class Api::RecipesController < ApplicationController
  def recipe
    @recipe = Recipe.first
    render 'recipes.json.jb'
  end
end
