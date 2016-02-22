class CartController < ApplicationController

  def show
    begin
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"

    end
  end

end
