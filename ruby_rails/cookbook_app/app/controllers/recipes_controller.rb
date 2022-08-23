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
    @recipe = Recipe.new(
      title: params[:title],
      ingredients: params[:ingredients],
      chef: params[:chef],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: params[:user_id]
    )
    @recipe.save 
    # render 'recipes/show'
    redirect_to "/recipes/#{@recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "recipes/edit"
  end
end
