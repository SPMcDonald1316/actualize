class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'api/products/index'
  end

  def product_seg
    @product = Product.find_by(id: params[:id].to_i)
    render 'api/products/product'
  end
end
