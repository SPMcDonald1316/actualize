class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.json.jb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @recipe = Recipe.new(
      title: params[:title],
      ingredients: params[:ingredients],
      chef: params[:chef],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: user.id
    )
    @recipe.save
    render 'show.json.jb'
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update({
      title: params[:title] || @recipe.title,
      ingredients: params[:ingredients] || @recipe.ingredients,
      chef: params[:chef] || @recipe.chef,
      directions: params[:directions] || @recipe.directions,
      prep_time: params[:prep_time] || @recipe.prep_time,
      image_url: params[:image_url] || @recipe.image_url
    })
    render 'show.json.jb'
  end

  def destroy
    Recipe.find_by(id:params[:id]).destroy
    render 'destroy.json.jb'
  end
end
