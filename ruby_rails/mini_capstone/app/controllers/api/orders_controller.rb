class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @orders = current_user.orders
    render "api/orders/index"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "api/orders/show"
  end

  def create
    tax_rate = 0.09
    carted_products = current_user.carted_products.where(status: 'carted')
    subtotal = 0
  
    carted_products.each do |cp|
      subtotal += cp.product.price * cp.quantity
    end

    tax = subtotal * tax_rate
    total = subtotal + tax

    @order = Order.new({
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    })

    if @order.save
      carted_products.update_all(status: 'purchased', order_id: @order.id)
      render 'api/orders/show'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
