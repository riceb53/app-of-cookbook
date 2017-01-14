class RecipesController < ApplicationController

  def index
    attribute = params["sort_attribute"]
    order = params["order_by"]
    if attribute && order
      @recipes = Recipe.order(attribute => order)
    else
      @recipes = Recipe.all
    end
    @recipes = current_user.recipes
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
    recipe = Recipe.new(title: params["title"], ingredients: params["ingredients"],
      chef: params["chef"],
      ingredients: params["ingredients"],
      user_id: current_user.id
      )
    recipe.save
    # add a flash message
    flash[:success] = "You made a new thing"
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params["id"])
    render 'edit.html.erb'
  end

  def update
    recipe = Recipe.find_by(id: params["id"])
    recipe.update(title: params["title"], chef: params["chef"], directions: params["directions"], ingredients: params["ingredients"])
    flash[:info] = "You edited the item"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    # grab the right recipe
    recipe = Recipe.find_by(id: params["id"])
    # kill it
    recipe.destroy
    flash[:danger] = "You <strong>destroyed</strong> the item"
    redirect_to "/recipes"
  end
end
