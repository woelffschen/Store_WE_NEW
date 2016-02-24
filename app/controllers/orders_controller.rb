class OrdersController < ApplicationController
  include CurrentCart

  before_action :authenticate_user!

  before_action :set_cart
  def index
  end

  def show
  end

  def create
    if session[:cart]
      cart = session[:cart]
    orderItems = OrderItem.create(:quantity => cart)
    @order = Order.create(:orderdate => Date.today)
    else
    end
  end

  def delete
    session[:cart_id] = nil
    redirect_to orders_end_path
  end


  private

  def order_params
    params.require(:orders).permit(:orderdate)
  end
end


