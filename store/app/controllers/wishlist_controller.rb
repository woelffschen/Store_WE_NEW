class WishlistController < ApplicationController


  # Authentification needed for adding articles into wishlist
  #before_action :authenticate_user!, except: [:index]

  def add
    id = params[:id]

    # if the wishlist has already been created, use the existing wishlist else create a new wishlist
    if session[:wishlist] then
      wishlist = session[:wishlist]
    else
      session[:wishlist] = {}
      wishlist = session[:wishlist]
    end

    #if the product hast already been added to the cart, increment the value else set ..
    if wishlist[id] then
      wishlist[id] = wishlist[id] + 1
    else
      wishlist[id] = 1
    end
    redirect_to :action => :index
  end

  def clearWishlist
    session[:wishlist] = nil
    redirect_to :action => :index
  end

  def index
    # if there is a cart, pass it to the page for display else pass an empty value
    if session[:wishlist] then
      @wishlist = session[:wishlist]
    else
      @wishlist = {}
    end
  end

end
