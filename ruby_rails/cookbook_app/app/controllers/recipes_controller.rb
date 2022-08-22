class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "recipes/index"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "recipes/show"
  end

  def new
    render "recipes/new"
  end

  def create
    render 'recipes/show'
  end
end
