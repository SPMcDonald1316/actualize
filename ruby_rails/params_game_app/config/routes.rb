Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/name/:name" => "games#name"
    get "/guessANumber/:number" => "games#guess_a_number"

    get "/url_segment_parameter/:name" => "games#segment"  

    post "/guessANumber" => "games#guess_a_number"
  end
end
