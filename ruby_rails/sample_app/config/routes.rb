Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/hello" => "example_pages#welcome"
    get "/table" => "example_pages#leg"
    get "/third_url" => "example_pages#another"
    get "/buffalo" => "example_pages#bill"
  end
end
