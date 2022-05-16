class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'products.json.jb'
  end

  def product_one
    @product = Product.find_by(id:1)
    render 'product.json.jb'
  end

  def product_two
    @product = Product.find_by(id:2)
    render 'product.json.jb'
  end

  def product_three
    @product = Product.find_by(id:3)
    render 'product.json.jb'
  end
end
