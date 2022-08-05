class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    @order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: subtotal * 0.10,
      total: subtotal + tax
    })
    if @order.save
      render 'api/orders/show'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
