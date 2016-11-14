class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render 'index.html.erb'
  end

  def show

    @recipe = Recipe.find_by(id: params["id"])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    # make a new recipe from the params
    recipe = Recipe.new(title: params["title"], ingredients: params["ingredients"], chef: params["chef"], ingredients: params["ingredients"])
    recipe.save
    # add a flash message
    flash[:created] = "You made a new thing"
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params["id"])
    render 'edit.html.erb'
  end

  def update
    recipe = Recipe.find_by(id: params["id"])
    recipe.update(title: params["title"], chef: params["chef"], directions: params["directions"], ingredients: params["ingredients"])
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    # grab the right recipe
    recipe = Recipe.find_by(id: params["id"])
    # kill it
    recipe.destroy
    redirect_to "/recipes"
  end
end
