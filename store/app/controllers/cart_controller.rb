class CartController < ApplicationController

# Authentification needed for adding articles into shopping cart

before_action :authenticate_user!, except: [:index]
  def add
    id = params[:id]

    # if the car has already been created, use the existing cart else create a new cart
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end

    #if the product hast already been added to the cart, increment the value else set ..
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
  # if there is a cart, pass it to the page for display else pass an empty value
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

end
