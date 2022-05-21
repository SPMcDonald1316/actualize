class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'api/products/index'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'api/products/show'
  end

  def create
    @product = Product.new({
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    })
    @product.save
    render 'api/products/show'
  end

  def update
    @product = Product.find_by(id: params[:id]).update({
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      image_url: params[:image_url] || @product.image_url
    })
    render 'api/products/show'
  end
end
