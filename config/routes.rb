Rails.application.routes.draw do
  get '/place_with_a_recipe' => 'recipes#jay_recipe'
  get '/all' => 'recipes#all_da_recipes'
  # place to show the user the form
  get '/recipe_form' => 'recipes#new_recipe_form'
  # place to show the user that they created the new recipe
  post '/created_recipe' => 'recipes#make_recipe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
