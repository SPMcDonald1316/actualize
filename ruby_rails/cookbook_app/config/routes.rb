Rails.application.routes.draw do
  
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => "recipes#show"

  namespace :api do
    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"
    post "/recipes" => "recipes#create"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
