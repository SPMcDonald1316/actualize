class Api::CartedProductsController < ApplicationController
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
end
