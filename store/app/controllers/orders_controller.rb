class OrdersController < ApplicationController

  def index

  end

  def create
    if session[:cart]
     cart = session[:cart]
    orderItems = Or
    @order = Order.create(:orderdate => Date.today)
    else

    end

  end

  private




  def order_params
    params.require(:order).permit(:orderdate)
  end
end


