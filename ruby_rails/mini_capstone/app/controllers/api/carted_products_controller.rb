class Api::CartedProductsController < ApplicationController
  def create
    if current_user
      carted_product = CartedProduct.new({
        status: 'carted',
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity]
      })
    else
      render json: {error: "Please login first."}, status: :unprocessible_entity
    end
  end
end
