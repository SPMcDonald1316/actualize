Rails.application.routes.draw do
  get "/products" => "api/products#index"
  post "/products" => "api/products#create"
  get "/products/:id" => "api/products#show"
  patch "/products/:id" => "api/products#update"
  delete "/products/:id" => "api/products#destroy"
end
