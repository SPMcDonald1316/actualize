class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'api/recipes/index'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'api/recipes/show'
  end

  def create
    @recipe = Recipe.new(
      title: params[:title],
      ingredients: params[:ingredients],
      chef: params[:chef],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url]
    )
    @recipe.save
    render 'api/recipes/show'
  end
end
