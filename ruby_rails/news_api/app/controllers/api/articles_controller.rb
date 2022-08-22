class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=#{Rails.application.credentials.news_api[:api_key]}")
    @articles = response.parse
    render "api/articles/index"
  end
end
