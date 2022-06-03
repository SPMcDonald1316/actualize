class Api::ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.where("name LIKE %#{params[:search]}%")
    end
    if params[:discount] == 'true'
      @products = @products.select {|product| product.is_discounted?}
    end
    if params[:sort] && params[:sort_order]
      @products = Product.order("#{params[:sort]} #{params[:sort_order].upcase}")
    else
      @products = Product.order("id #{params[:sort_order].upcase}")
    end
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

    if @product.save
      render 'api/products/show'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
   end
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update({
        name: params[:name] || @product.name,
        price: params[:price] || @product.price,
        description: params[:description] || @product.description,
        image_url: params[:image_url] || @product.image_url
      })
      render 'api/products/show'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    Product.find_by(id: params[:id]).destroy
    render 'api/products/destroy'
  end
end
