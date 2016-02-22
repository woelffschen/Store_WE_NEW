class CartController < ApplicationController
  include CurrentCart

  def delete
    session[:cart_id] = nil
    redirect_to cart_path
  end

  before_action :set_cart
    def show
    end

end
