Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/first" => "messages#first"
    get "/second" => "messages#second"
    get "/third" => "messages#third"
    get "/info" => "messages#personal_info"
  end
end
