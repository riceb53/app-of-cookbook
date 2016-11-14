Rails.application.routes.draw do
  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  get '/recipes/:id' => 'recipes#show'
  post '/recipes' => 'recipes#create'
  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'
  delete '/recipes/:id' => 'recipes#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
