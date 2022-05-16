Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/name" => "games#name"
    get "/guessANumber" => "games#guess_a_number"
  end
end
