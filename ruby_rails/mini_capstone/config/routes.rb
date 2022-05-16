Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/products" => "products#index"
    get "/productOne" => "products#product_one"
    get "/productTwo" => "products#product_two"
    get "/productThree" => "products#product_three"
  end
end
