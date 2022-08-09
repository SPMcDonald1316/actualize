class Api::OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    render "api/orders/index"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "api/orders/show"
  end

  def create
    tax_rate = 0.10
    
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * tax_rate
    total = subtotal + tax

    @order = Order.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total
    })
    if @order.save
      render 'api/orders/show'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
