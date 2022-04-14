class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'products.json.jb'
  end
end
