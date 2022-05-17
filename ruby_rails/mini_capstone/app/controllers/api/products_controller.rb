class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'api/products/index'
  end

  def product
    @product = Product.find_by(id: params[:id].to_i)
    render 'api/products/product'
  end
end
