class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'api/products/index'
  end

  def product_one
    @product = Product.find_by(id:1)
    render 'api/products/product'
  end
end
