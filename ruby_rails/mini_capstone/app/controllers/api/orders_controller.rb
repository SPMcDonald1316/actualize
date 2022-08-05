class Api::OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
    render "api/orders/index"
  end
  def create
    product = Product.find_by(id: params[:product_id])
    tax_rate = 0.10
    @order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
    })
    if @order.save
      @order.tax = @order.subtotal * tax_rate
      @order.total = @order.subtotal + @order.tax
      render 'api/orders/show'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
