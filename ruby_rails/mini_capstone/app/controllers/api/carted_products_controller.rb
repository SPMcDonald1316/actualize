class Api::CartedProductsController < ApplicationController
  def index
    if current_user
      @carted_products = current_user.carted_products.where(status: 'carted')
      render 'api/carted_products/index'
    else
      render json: {message: 'Log in to see cart.'}, status: :unprocessable_entity
    end  
  end

  def create
    if current_user
      @carted_product = CartedProduct.new({
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        status: 'carted'
      })
      @carted_product.save
      render 'api/carted_products/show'
    else
      render json: {message: 'Please log in first.'}, status: :unauthorized 
    end
  end

  def remove
    @carted_products = current_user.carted_products.where(status: 'carted')

    product = @carted_products.find_by(product_id: params[:product_id]).update({status: 'removed'})

    render 'api/carted_products/index'
  end
end
