Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    # Product Routes
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    # User Routes
    post "/users" => "users#create"

    # Login
    post "/sessions" => "sessions#create"

    # Order Routes
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"

    # Cart Routes
    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    patch "/carted_products/:id" => "carted_products#remove"
  end
end
