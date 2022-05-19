class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'api/recipes/index'
  end
end
