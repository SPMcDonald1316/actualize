class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'api/recipes/index'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'api/recipes/show'
  end
end
