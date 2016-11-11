class RecipesController < ApplicationController
  def jay_recipe
    @recipe = Recipe.find_by(id: 2)
    render 'eggs.html.erb'
  end
  def all_da_recipes
    @recipes = Recipe.all #[recipe1,recipe2]
    render 'all.html.erb'
  end

  def make_recipe
    render 'make_recipe.html.erb'
  end

  def show_recipe
    @recipe = Recipe.new(title: params["title"], chef: params["chef"], ingredients: params["ingredients"], directions: params["directions"], prep_time: params["prep_time"])
    @recipe.save
    render 'recipe.html.erb'
  end

  def new_recipe_form
    render 'new_form.html.erb'
  end

  def make_recipe

    @recipe = Recipe.new(
      title: params["form_title"],
      directions: params["form_directions"],
      chef: params["form_chef"],
      ingredients: params["form_ingredients"]
      )
    @recipe.save
    render 'recipe.html.erb'
  end


end
